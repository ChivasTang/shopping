package com.flystone.shopping.service;

import com.flystone.shopping.dao.ShopDao;
import com.flystone.shopping.domain.ShopDomain;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ShopServiceImpl implements ShopService {

    @Resource
    private ShopDao shopDao;

    @Override
    public ShopDomain getOneShop(ShopDomain param) {
        return shopDao.getOneShop(param);
    }
}
