package com.flystone.shopping.dao;

import com.flystone.shopping.domain.CategoryShopDomain;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("categoryShopDao")
public interface CategoryShopDao {

    List<CategoryShopDomain> getCategoryShopList(CategoryShopDomain param);
}
