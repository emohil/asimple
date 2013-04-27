package com.company.gap.pesticide.service;

import com.company.gap.base.service.IBaseService;
import com.company.gap.pesticide.model.InStock;

/**
 * 入库的 审批/作废 需要更新库存状态.
 *
 */
public interface IPesticideInStockService extends IBaseService<InStock> {
	
	
	int approve(Integer id);
	
	int nullify(Integer id);
	
	
}
