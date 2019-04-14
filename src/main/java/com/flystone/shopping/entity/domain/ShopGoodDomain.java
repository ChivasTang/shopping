package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class ShopGoodDomain extends ParentTableDomain{

    // 販売店唯一区分
    private Long shopId;

    // 商品唯一区分
    private Long goodId;
}