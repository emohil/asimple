package com.company.gap.manure.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.company.gap.manure.dao.IManureInStockDao;
import com.company.gap.manure.entity.ManureInStock;

@Repository
public class ManureInStockDaoImpl implements IManureInStockDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public ManureInStock findInStockById(int instock_id) {
		String sql = new StringBuffer()
			.append("select instock_id,")
			.append(" instock_stockid, instock_nameid, instock_sizeid, instock_batchid, instock_producerid,")
			.append(" instock_quantity, instock_location, instock_element, instock_indate, instock_kindid,")
			.append(" instock_expirydate, instock_vendor, instock_wrap, instock_inmanager, instock_comment,")
			.append(" instock_status")
			.append(" from t_manure_instock")
			.append(" where instock_id=?")
		.toString();
		List<ManureInStock> instocks = jdbcTemplate.query(sql, new BeanPropertyRowMapper<ManureInStock>(ManureInStock.class), instock_id);
		
		return instocks.isEmpty() ? new ManureInStock() : instocks.get(0);
	}
	
	@Override
	public int insert(ManureInStock in) {
		String sql = new StringBuffer()
			.append("insert into t_manure_instock(")
			.append("instock_stockid, instock_nameid, instock_sizeid, instock_batchid, instock_producerid,")
			.append("instock_quantity, instock_location, instock_element, instock_indate, instock_kindid,")
			.append("instock_expirydate, instock_vendor, instock_wrap, instock_inmanager, instock_comment")
			.append(") values (")
			.append("?,?,?,?,?,")
			.append("?,?,?,?,?,")
			.append("?,?,?,?,?")
			.append(")")
		.toString();
		return jdbcTemplate.update(sql, 
				in.getInstock_stockid(), in.getInstock_nameid(), in.getInstock_sizeid(), in.getInstock_batchid(), in.getInstock_producerid(),
				in.getInstock_quantity(), in.getInstock_location(), in.getInstock_element(), in.getInstock_indate(), in.getInstock_kindid(),
				in.getInstock_expirydate(),in.getInstock_vendor(), in.getInstock_wrap(), in.getInstock_inmanager(), in.getInstock_comment()
		);
	}
	
	@Override
	public int delete(int instock_id) {
		String sql = "delete from t_manure_instock where instock_id=?";
		return jdbcTemplate.update(sql, instock_id);
	}
	
	@Override
	public int auditing(int instock_id, int stock_id) {
		String sql = "update t_manure_instock set instock_stockid=?, instock_status=? where instock_id=?";
		return jdbcTemplate.update(sql, stock_id, 1, instock_id);
	}

}
