package br.com.emotional.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.emotional.entidade.Musica;
import br.com.emotional.persistencia.MusicaDAO;
import util.Erro;

@WebServlet({"/denunciarMusica"})
/**
 * Classe para o controle de denuncias de musicas no sistema
 */
public class ControleDenunciaMusica extends HttpServlet{
	protected void service(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException  {
		
		Erro erros = new Erro();
		int idMusica = Integer.parseInt(request.getParameter("id_musica")); 
		
		MusicaDAO md = new MusicaDAO(); 
		try {
			boolean denunciada = md.denunciarMusica(idMusica);
			if(denunciada) {
				erros.add("Den�ncia realizada com sucesso!");
			}
			else {
				erros.add("M�sica n�o p�de ser denunciada");
			}
			
		} catch (Exception e) {
		//	e.printStackTrace();
			Logger.log("Musica n�o p�de ser denunciada", e);
		} 
		
request.setAttribute("mensagens", erros);
		
		String url = "DenunciarMusica.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
}
}