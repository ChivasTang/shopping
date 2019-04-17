package com.flystone.shopping.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;
@Setter
@Getter
@ToString(callSuper = true)
public class ParentTableDomain {

    //DB名称
    private String dbName;

    // 登録のユーザー
    private String addUser;

    // 登録の日付
    private Date addDate;

    // 更新のユーザー
    private String upUser;

    // 更新の日付
    private Date upDate;

    // 削除フラグ
    private Boolean delKbn;
}
