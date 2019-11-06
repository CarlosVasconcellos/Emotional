package br.com.emotional.controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.emotional.Pattern.OrdenadorPorNome;
import br.com.emotional.Pattern.OrdernadorTemplate;
import br.com.emotional.entidade.Emocao;
import br.com.emotional.entidade.Musica;
import br.com.emotional.entidade.Usuario;
import br.com.emotional.persistencia.EmocaoDAO;
import br.com.emotional.persistencia.PlaylistDAO;
import br.com.emotional.persistencia.UsuarioDAO;
import util.Erro;


@WebServlet({"/gerarPlaylist"})
/**
 * Classe para o controle da geracao de playlist no sistema
 */
public class controleGerarPlaylist extends HttpServlet {
	protected void service(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException{
		
		Erro erros = new Erro();
		OrdernadorTemplate ordenador = new OrdenadorPorNome(); 
 
		
		HttpServletResponse res = (HttpServletResponse) response;
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        
        Usuario u = (Usuario) session.getAttribute("usuarioLogado");
        String emocao = request.getParameter("sentimento"); 
        String nome = request.getParameter("nomePlaylist"); 

        //Ele busca o id da emocao detectada
        Emocao emo = new Emocao(); 
        emo.setNome(emocao);
        EmocaoDAO ed = new EmocaoDAO(); 
        try {
			emo.setId_emocao(ed.getIdEmocaoByNome(emo));
		} catch (Exception e) {
			erros.add("Nao foi possivel identificar a emocao");
		} 
        
        //Ele muda a emocao do usuario para a �ltima emocao detectada
        UsuarioDAO ud = new UsuarioDAO(); 
        try {
			ud.alteraEmocaoUsuario(u.getidUsu(), emo.getId_emocao());
		} catch (Exception e) {
			erros.add("Nao foi possivel alterar emocao do usuario");
		}

        //Insere na tabela Playlist a nova playlist, mas antes verifica se o usu�rio j� tem playlist criada
        PlaylistDAO pd = new PlaylistDAO(); 
        boolean inserido = false; 
        
        //Agora, vai trazer as playlists criadas e pertencentes ao usu�rio.
        List<Integer> lst = new ArrayList<>(); 
        try {
			lst = pd.buscaPlaylistDiariaporUs(u.getidUsu());
		} catch (Exception e) {
			erros.add("Playlist nao pode ser recuperada");
		} 
        
        if (lst.isEmpty() && !u.premium()) {
        	erros.add("Usu�rio estourou limite de playlist do dia.");
        	String url = "GerarPlaylist.jsp";
        	
        	request.setAttribute("mensagens", erros);
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
		}
        
        if (!erros.isExisteErros()) {
			
		
        try {
			inserido = pd.inserirPlaylist(nome, u.getidUsu());
		} catch (Exception e) {
			erros.add("Playlist nao inserida");
		} 
        if (!inserido) {
        	request.setAttribute("mensagens", erros);
        	
            String url = "GerarPlaylist.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
		}
       
        else {
        	
        	List<Musica> listaMusicas = new ArrayList<>(); 
        	try {
				listaMusicas = pd.gerarPlaylist(emo.getId_emocao());
			} catch (Exception e) {
				erros.add("Erro ao gerar playlist");
			}
        	
        	
        	
        	if (listaMusicas.size() == 12) {
        		ArrayList<Musica> novaLista = new ArrayList<Musica>();
        		novaLista = (ArrayList<Musica>) ordenador.ordenarMusica(listaMusicas);
        		
				request.setAttribute("playlist", nome);
        		request.setAttribute("musicas", listaMusicas);
            	
                String url = "Playlist24H.jsp";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
        		
			}
        	else {
        		erros.add("A lista n�o retornou as 12 musicas esperadas");
        		request.setAttribute("mensagens", erros);
            	
                String url = "GerarPlaylist.jsp";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
        	}
        }
        }
}
}