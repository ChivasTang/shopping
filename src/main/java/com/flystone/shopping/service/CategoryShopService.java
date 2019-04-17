package com.flystone.shopping.service;

import com.flystone.shopping.domain.CategoryShopDomain;

import java.util.List;

public interface CategoryShopService {
    List<CategoryShopDomain> getCategoryShopList(CategoryShopDomain param);
}
