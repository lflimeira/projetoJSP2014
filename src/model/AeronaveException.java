package model;

public class AeronaveException extends Exception {

	private static final long serialVersionUID = 1L;

	public AeronaveException() {
		super();
	}

	public AeronaveException(String message, Throwable cause) {
		super(message, cause);
	}

	public AeronaveException(String message) {
		super(message);
	}

	public AeronaveException(Throwable cause) {
		super(cause);
	}

}
