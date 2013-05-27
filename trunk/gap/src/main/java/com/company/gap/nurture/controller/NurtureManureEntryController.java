package com.company.gap.nurture.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.gap.base.controller.BeanEntryController;
import com.company.gap.base.service.IBaseService;
import com.company.gap.base.util.DateUtils;
import com.company.gap.nurture.model.Manure;
import com.company.gap.nurture.service.INurtureManureService;

@Controller
@RequestMapping("nurture/manure")
public class NurtureManureEntryController extends BeanEntryController<Manure> {

	@Autowired
	private INurtureManureService service;
	
	@Override
	protected IBaseService<Manure> get() {return this.service;}
	
	@Override
	protected String toList(HttpServletRequest request) {
		String registerId = request.getParameter("registerId");
		return "redirect:/nurture/manure/list.html?registerId=" + registerId;
	}
	
	@Override
	protected String toEntry(HttpServletRequest request) {
		return "nurture/manure/nurtureManureEntry";
	}
	
	@Override
	public void initializeEdit(HttpServletRequest request, Manure t) {
		t.getDisp().put("usedate", DateUtils.format(t.getUsedate()));
		super.initializeEdit(request, t);
	}
	
	@Override
	protected void initialize(HttpServletRequest request) {
		super.initialize(request);
		request.setAttribute("registerId", request.getParameter("registerId"));
	}
}