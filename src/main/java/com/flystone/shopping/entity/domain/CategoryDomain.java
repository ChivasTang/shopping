package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class CategoryDomain extends ParentTableDomain{

    // 販売店が属する大分類唯一区分
    private Long categoryId;

    // 大分類名称
    private String categoryName;

}