package com.zms.founding.common.exception;

public class loginFailException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public loginFailException(String meString) {
		super(meString);
	}
}
