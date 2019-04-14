package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class GoodDomain extends ParentTableDomain{

    // 商品唯一区分
    private Long goodId;

    // 販売店唯一区分
    private Long shopId;

    // 商品名称
    private String goodName;

    // 価格
    private Long price;

    // 商品種別1
    private Long modelType1;

    // 商品種別2
    private Long modelType2;

    // 国家唯一区分
    private Long countryId;

    // 地域唯一区分
    private Long originId;

    // 備考
    private String note;
}
