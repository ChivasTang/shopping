package com.flystone.shopping.dao;

import com.flystone.shopping.domain.ShopDomain;
import org.springframework.stereotype.Repository;

@Repository("shopDao")
public interface ShopDao {
    ShopDomain getOneShop(ShopDomain param);
}
