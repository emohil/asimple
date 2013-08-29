package com.company.gap.medicine.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.company.gap.base.dao.impl.BaseDaoImpl;
import com.company.gap.medicine.dao.IMedicineStockDao;
import com.company.gap.medicine.model.Stock;

@Repository
public class MedicineStockDaoImpl extends BaseDaoImpl<Stock> implements IMedicineStockDao<Stock> {

	@Override
	public List<Stock> findStockList() {
		String sql = "select * from " + this.getTableName() + " where quantity>0";
		return this.findList(sql);
	}

	@Override
	public int addStockQuantity(Integer id, double quantity) {
		String sql = "update " + this.getTableName() + " set quantity=quantity+? where id=?";
		return jdbcTemplate.update(sql, quantity, id);
	}
}