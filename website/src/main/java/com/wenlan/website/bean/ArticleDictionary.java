package com.wenlan.website.bean;

/**
 * @Author wenlan
 * @Date 2020-2-15 20:50
 * @Version 1.0
 * Content:
 */
public class ArticleDictionary {
    /**
     * 物品表比较大众的种类ID
     */
    private Integer resId;
    /**
     * 物品名称
     */
    private String resName;

    public Integer getResId() {
        return resId;
    }

    public void setResId(Integer resId) {
        this.resId = resId;
    }

    public String getResName() {
        return resName;
    }

    public void setResName(String resName) {
        this.resName = resName;
    }
}
