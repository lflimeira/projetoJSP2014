package model;

public class CheckinException extends Exception {

	private static final long serialVersionUID = 1L;

	public CheckinException() {
		super();
	}

	public CheckinException(String message, Throwable cause) {
		super(message, cause);
	}

	public CheckinException(String message) {
		super(message);
	}

	public CheckinException(Throwable cause) {
		super(cause);
	}

}
