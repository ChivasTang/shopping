package com.flystone.shopping.service;

import com.flystone.shopping.domain.GoodDomain;
import com.flystone.shopping.domain.ShopGoodDomain;

import java.util.List;

public interface ShopGoodService {
    ShopGoodDomain getOneShop(ShopGoodDomain param);
    List<GoodDomain> getGoodList(ShopGoodDomain param);
}
