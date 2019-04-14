package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class CountryDomain extends ParentTableDomain{

    // 国家唯一区分
    private Long countryId;

    // 国家名称
    private String countryName;

}