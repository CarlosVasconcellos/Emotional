package br.com.emotional.persistencia;


/*
 * Classe que aplica exce��o na cone��o com banco 
 */
public class DAOException extends Exception{
	 public DAOException(Throwable cause) {
	        super(cause);
	    }
	  
	    public DAOException(String message, Throwable cause) {
	        super(message, cause);
	    }
	  
	    public DAOException(String message) {
	        super(message);
	    }
	  
	    public DAOException() {
	        super();
	    }
}
