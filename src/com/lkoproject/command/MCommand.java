package com.lkoproject.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MCommand {
	String execute(HttpServletRequest request, HttpServletResponse response ) throws IOException;

}
