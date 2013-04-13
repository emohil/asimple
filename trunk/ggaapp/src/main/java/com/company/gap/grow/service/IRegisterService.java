package com.company.gap.grow.service;

import java.util.List;

import com.company.gap.base.service.IBaseService;
import com.company.gap.grow.model.Register;

public interface IRegisterService extends IBaseService<Register> {
	
	List<Register> findListByGrowStatus(Integer growstatus);
	
	int approve(Integer id);
	
	int complete(Integer id);
	
	int archive(Integer id);
}

