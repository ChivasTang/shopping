package com.flystone.shopping.entity.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;
@Setter
@Getter
@ToString(callSuper = true)
public class ReviewerDomain extends ParentTableDomain {

    // 評価者唯一区分
    private Long reviewerId;

    // 評価者の愛称
    private String reviewerName;

    // 性別
    private Boolean gender;

    // 生年月日
    private Date birthday;

}