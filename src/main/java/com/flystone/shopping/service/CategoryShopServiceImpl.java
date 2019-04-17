package com.flystone.shopping.service;

import com.flystone.shopping.dao.CategoryShopDao;
import com.flystone.shopping.domain.CategoryShopDomain;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CategoryShopServiceImpl implements CategoryShopService {

    @Resource
    private CategoryShopDao categoryShopDao;

    @Override
    public List<CategoryShopDomain> getCategoryShopList(CategoryShopDomain param) {
        return categoryShopDao.getCategoryShopList(param);
    }
}
