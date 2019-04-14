package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString(callSuper = true)
public class ModelPictureDomain extends ParentTableDomain {

    // 商品種別写真の唯一区分
    private Long pictureId;

    // 商品唯一区分
    private Long goodId;

    // 写真タイトル
    private String title;

    // 写真説明文
    private String pictureDest;

}