package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class ModelDomain extends ParentTableDomain {

    // 商品種別唯一区分
    private Long modelId;

    // 商品種別名称
    private String modelName;

}