package com.flystone.shopping.dao;

import com.flystone.shopping.domain.GoodDomain;
import com.flystone.shopping.domain.ShopGoodDomain;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("shopGoodDao")
public interface ShopGoodDao {
    ShopGoodDomain getOneShop(ShopGoodDomain param);
    List<GoodDomain> getGoodList(ShopGoodDomain param);
}
