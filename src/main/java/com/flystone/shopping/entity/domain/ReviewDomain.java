package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class ReviewDomain extends ParentTableDomain{

    // 評価者唯一区分
    private Long reviewerId;

    // 商品唯一区分
    private Long goodId;

    // 評価項目1
    private Integer reviewScore1;

    // 評価項目2
    private Integer reviewScore2;

    // 評価項目3
    private Integer reviewScore3;

    // 評価項目4
    private Integer reviewScore4;

    // 評価項目5
    private Integer reviewScore5;

}