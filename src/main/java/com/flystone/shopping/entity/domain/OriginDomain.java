package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class OriginDomain extends ParentTableDomain {

    // 地域唯一区分
    private Long originId;

    // 国家唯一区分
    private Long countryId;

    // 地域名称
    private String originName;

}