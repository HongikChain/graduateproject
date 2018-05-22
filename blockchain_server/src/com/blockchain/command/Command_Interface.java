package com.blockchain.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command_Interface {
	
	public int execute(HttpServletRequest req, HttpServletResponse res);
}
