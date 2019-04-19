package com.flystone.shopping.service;

import com.flystone.shopping.dao.ShopGoodDao;
import com.flystone.shopping.domain.GoodDomain;
import com.flystone.shopping.domain.ShopGoodDomain;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ShopGoodServiceImpl implements ShopGoodService {

    @Resource
    private ShopGoodDao shopGoodDao;


    @Override
    public ShopGoodDomain getOneShop(ShopGoodDomain param) {
        return shopGoodDao.getOneShop(param);
    }

    @Override
    public List<GoodDomain> getGoodList(ShopGoodDomain param) {
        return shopGoodDao.getGoodList(param);
    }


}
