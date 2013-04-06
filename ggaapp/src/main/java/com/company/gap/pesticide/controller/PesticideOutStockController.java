package com.company.gap.pesticide.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.gap.base.controller.ViewController;
import com.company.gap.base.dao.search.Op;
import com.company.gap.base.entity.ViewFormModel;
import com.company.gap.base.util.DateUtils;
import com.company.gap.base.util.Dto;
import com.company.gap.cell.service.ICellService;
import com.company.gap.pesticide.entity.PesticideOutStock;
import com.company.gap.pesticide.entity.PesticideResource;
import com.company.gap.pesticide.entity.PesticideStock;
import com.company.gap.pesticide.enumeration.PesticideOutStockStatus;
import com.company.gap.pesticide.enumeration.PesticideResourceType;
import com.company.gap.pesticide.service.IPesticideOutStockService;
import com.company.gap.pesticide.service.IPesticideResourceService;
import com.company.gap.pesticide.service.IPesticideStockService;

@Controller
@RequestMapping("pesticide/outstock")
public class PesticideOutStockController extends ViewController {
	
	@Autowired
	private IPesticideOutStockService outStockService;
	@Autowired
	private IPesticideStockService stockService;
	@Autowired
	private ICellService cellService;
	
	@Autowired
	private IPesticideResourceService resourceService;
	
	@Override
	protected void preparing(HttpServletRequest request, ViewFormModel model) {
		request.setAttribute("nameList", 	resourceService.queryByType(PesticideResourceType.NAME, PesticideResource.ALL));
		request.setAttribute("sizeList", 	resourceService.queryByType(PesticideResourceType.SIZE, PesticideResource.ALL));
		request.setAttribute("batchList", 	resourceService.queryByType(PesticideResourceType.BATCH, PesticideResource.ALL));
		request.setAttribute("producerList",resourceService.queryByType(PesticideResourceType.PRODUCER, PesticideResource.ALL));
		
	}
	
	@Override
	protected void dowithSearcher(HttpServletRequest request, ViewFormModel model) {
		int stock_id = NumberUtils.toInt(request.getParameter("stock_id"));
		
		if (stock_id != 0) {
			request.setAttribute("stock_id", stock_id);
			searcher.addSf("outstock_stockid", Op.EQ, String.valueOf(stock_id));
		}
		Map<String, Object> data = model.getData();
		String nameid 		= ObjectUtils.toString(data.get("nameid"), "0");
		String sizeid 		= ObjectUtils.toString(data.get("sizeid"), "0");
		String batchid 		= ObjectUtils.toString(data.get("batchid"), "0");
		String producerid 	= ObjectUtils.toString(data.get("producerid"), "0");
		if (!"0".equals(nameid)) 	searcher.addSf("outstock_nameid", Op.EQ, nameid);
		if (!"0".equals(sizeid)) 	searcher.addSf("outstock_sizeid", Op.EQ, sizeid);
		if (!"0".equals(batchid)) 	searcher.addSf("outstock_batchid", Op.EQ, batchid);
		if (!"0".equals(producerid))searcher.addSf("outstock_producerid", Op.EQ, producerid);
		
		searcher.setTable("t_Pesticide_outstock");
	}
	
	@Override
	protected void afterall(HttpServletRequest request, ViewFormModel model) {
		Map<Integer, String> resId2Res = resourceService.queryResId2Name();
		for (Dto dto : datas) {
			dto.put("outstock_nameid__disp", 	resId2Res.get(dto.get("outstock_nameid")));
			dto.put("outstock_sizeid__disp", 	resId2Res.get(dto.get("outstock_sizeid")));
			dto.put("outstock_batchid__disp", 	resId2Res.get(dto.get("outstock_batchid")));
			dto.put("outstock_producerid__disp",resId2Res.get(dto.get("outstock_producerid")));
			dto.put("outstock_outdate__disp", 	DateUtils.format(dto.getDate("outstock_outdate")));
			PesticideOutStockStatus status = PesticideOutStockStatus.valueOf(dto.getInt("outstock_status"));
			dto.put("outstock_status__disp", 	status.getName());
		}
	}
	
	@RequestMapping("add")
	public String toAdd(HttpServletRequest request) {
		_action = ACT_ADD;
		this.initData(request);
		request.setAttribute("outStock", new PesticideOutStock());
		return "pesticide/outstock/pesticideOutStoctEntry";
	}
	
	@RequestMapping("/checkOutStock")
	public @ResponseBody boolean checkOutStock(HttpServletRequest request, PesticideOutStock outStock){
		int stock_id = outStock.getOutstock_stockid();
		double quantity = outStock.getOutstock_quantity();
		PesticideStock stock = stockService.findStockById(stock_id);
		return (stock != null) && (stock.getStock_quantity() >= quantity);
	}
	
	@RequestMapping("save")
	public String save(HttpServletRequest request, PesticideOutStock outStock) {
		outStockService.save(outStock);
		return "redirect:/pesticide/outstock/list.html";
	}
	
	@RequestMapping("edit")
	public String edit(HttpServletRequest request, @RequestParam("outstock_id") int outstock_id) {
		_action = ACT_EDIT;
		this.initData(request);
		PesticideOutStock outStock = outStockService.findOutStockById(outstock_id);
		request.setAttribute("outStock", outStock);
		return "pesticide/outstock/pesticideOutStoctEntry";
	}
	
	@RequestMapping("disp")
	public String disp(HttpServletRequest request, @RequestParam("outstock_id") int outstock_id) {
		_action = ACT_DISP;
		this.initData(request);
		PesticideOutStock outStock = outStockService.findOutStockById(outstock_id);
		request.setAttribute("outStock", outStock);
		return "pesticide/outstock/pesticideOutStoctEntry";
	}
	
	@RequestMapping("auditing")
	public String auditing(HttpServletRequest request, @RequestParam("outstock_id") int outstock_id) {
		outStockService.auditing(outstock_id);
		return "redirect:/pesticide/outstock/list.html";
	}
	
	@RequestMapping("nullify")
	public String nullify(HttpServletRequest request, @RequestParam("outstock_id") int outstock_id) {
		outStockService.nullify(outstock_id);
		return "redirect:/pesticide/outstock/list.html";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request, @RequestParam("outstock_id") int outstock_id) {
		outStockService.delete(outstock_id);
		return "redirect:/pesticide/outstock/list.html";
	}
	
	private void initData(HttpServletRequest request) {
		request.setAttribute(ACT_NAME, 		_action);
		request.setAttribute("stocks", 		stockService.queryAllStock());
		request.setAttribute("cellList", 	cellService.findAllCells());
	}

	@Override
	protected String viewResolver(HttpServletRequest request, ViewFormModel model) {
		return "pesticide/outstock/pesticideOutStockList";
	}
}