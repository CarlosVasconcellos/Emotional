package br.com.emotional.persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
	
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	
	
	private final String URL = "jdbc:mysql://localhost:3306/emotional?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&autoReconnect=true&useSSL=false";
	private final String USER = "root";
	private final String PASS = "admin";
	
	
	protected void open()throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(URL,USER,PASS);
	}
	/*O m�todo de fechar ao ser chamado, verificar� se a variavel rs que �
	 * respons�vel por receber dados do banco esta aberta, aqui a express�o 
	 * � diferente de nula... se estivel ele fecha, caso ela esteja fechada
	 * ele n�o faz nada...*/
	protected void close()throws Exception {
		
		if(rs != null)
			rs.close();
		
		if(stmt != null)
			stmt.close();
		
		if(con != null)
			con.close();
	}
	
	public static void main(String[] args) {
		try {
			Dao d = new Dao();
			d.open();
			System.out.println("Conectado...");
			d.close();
		} catch (Exception e) {
			System.out.println("N�o Conectado....");
			e.printStackTrace();
		}
}
}
