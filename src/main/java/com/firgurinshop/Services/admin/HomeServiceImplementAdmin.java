package com.firgurinshop.Services.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firgurinshop.Dao.BrandDao;
import com.firgurinshop.Entity.Brand;

@Service
public class HomeServiceImplementAdmin implements IHomeServiceAdmin{
	@Autowired
	private BrandDao brandDao;

	@Override
	public int addBrand(Brand brand) {
		return brandDao.addBrand(brand);
	}

	@Override
	public List<Brand> getDetailBrand() {
		// TODO Auto-generated method stub
		return brandDao.getDetailBrand();
	}

	@Override
	public int updatestatusBrand(String brandId) {
		return brandDao.updatestatusBrand(brandId);
	}

	@Override
	public int updatestatusBrandDeactivated(String brandId) {
		// TODO Auto-generated method stub
	 return brandDao.updatestatusBrandDeactivated(brandId);
	}

	@Override
	public List<Brand> getDataBrand(String id) {
		// TODO Auto-generated method stub
		return brandDao.getDataBrand(id);
	}

	


}
