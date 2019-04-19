package com.flystone.shopping.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class GoodDomain extends ParentTableDomain{
    // 商品ID
    private Long goodId;

    // 商品名
    private String goodName;

    // 商品価格
    private Long price;

    // 国家ID
    private Long countryId;

    // 国家名
    private String countryName;

    // 産地ID
    private Long originId;

    // 産地名
    private String originName;
}
