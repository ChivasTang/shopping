package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class ShopDomain extends ParentTableDomain{

    // 販売店唯一区分
    private Long shopId;

    // 大分類唯一区分
    private Long categoryId;

    // 販売店名称
    private String shopName;
}