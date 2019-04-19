package com.flystone.shopping.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Setter
@Getter
@ToString(callSuper = true)
public class ShopGoodDomain extends ParentTableDomain{
    private Long shopId;
    private String shopName;
    List<GoodDomain> goodList;
}
