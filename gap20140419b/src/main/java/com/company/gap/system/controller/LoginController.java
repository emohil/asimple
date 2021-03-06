package com.company.gap.system.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.gap.base.GapConstants;
import com.company.gap.system.model.User;
import com.company.gap.system.service.IUserService;
import com.company.gap.system.service.impl.ServiceContext;


@Controller
@RequestMapping("admin")
public class LoginController {
	
	private final static String MESSAGE = "msg";

	@Autowired
	private IUserService userService;
	
	@RequestMapping("login")
	public String login(HttpServletRequest request, User user) {
		
		User tempUser = new User();
		tempUser.setUserId(user.getUserId());
		
		List<User> uList = userService.findList(tempUser);
		
		String error = "error_user";
		
		if (uList.size() == 0) {
			request.setAttribute(MESSAGE, "用户名" + user.getUserId() + "不存在!");
			return error;
		}
		User u = uList.get(0);
		
		
		if (!StringUtils.defaultString(u.getPassWord()).equals(user.getPassWord())) {
			request.setAttribute(MESSAGE, "用户名或密码不正确!");
			return error;
		}
		
		ServiceContext.setUser(u);
		HttpSession session = request.getSession(true);
		session.setAttribute(GapConstants.USER_BEAN, u);
		
		return "redirect:/admin/homepage.html";
	}
}
