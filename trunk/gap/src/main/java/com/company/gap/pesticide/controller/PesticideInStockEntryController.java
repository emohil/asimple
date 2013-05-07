package com.company.gap.pesticide.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.gap.base.controller.BeanEntryController;
import com.company.gap.base.service.IBaseService;
import com.company.gap.base.util.DateUtils;
import com.company.gap.base.util.Dto;
import com.company.gap.pesticide.component.PesticideResourceHelper;
import com.company.gap.pesticide.enumeration.PesticideResourceType;
import com.company.gap.pesticide.model.InStock;
import com.company.gap.pesticide.service.IPesticideInStockService;

@Controller
@RequestMapping("pesticide/instock")
public class PesticideInStockEntryController extends BeanEntryController<InStock> {

	@Autowired
	private IPesticideInStockService service;
	
	@Override
	protected IBaseService<InStock> get() {return this.service;}
	
	@Override
	protected String toList(HttpServletRequest request) {
		return "redirect:/pesticide/instock/list.html";
	}
	
	@Override
	protected String toEntry(HttpServletRequest request) {
		return "pesticide/instock/pesticideInStoctEntry";
	}
	
	
	@Override
	protected void initializeEdit(HttpServletRequest request, InStock t) {
		Dto disp = t.getDisp();
		disp.put("indate", DateUtils.format(t.getIndate()));
		disp.put("expirydate", DateUtils.format(t.getExpirydate()));
		disp.put("inuserId", "XXX");
		super.initializeEdit(request, t);
	}
	
	@Override
	protected void initialize(HttpServletRequest request) {
		super.initialize(request);
		request.setAttribute("nameList", 	PesticideResourceHelper.getList(PesticideResourceType.PM));
		request.setAttribute("specList", 	PesticideResourceHelper.getList(PesticideResourceType.GG));
		request.setAttribute("batchList", 	PesticideResourceHelper.getList(PesticideResourceType.SCPH));
		request.setAttribute("producerList",PesticideResourceHelper.getList(PesticideResourceType.SCS));
		request.setAttribute("kindList", 	PesticideResourceHelper.getList(PesticideResourceType.ZL));
	}
}