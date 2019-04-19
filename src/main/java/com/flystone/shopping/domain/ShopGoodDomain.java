package com.flystone.shopping.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class ShopDomain extends ParentTableDomain{
    private Long shopId;
    private String shopName;
}
