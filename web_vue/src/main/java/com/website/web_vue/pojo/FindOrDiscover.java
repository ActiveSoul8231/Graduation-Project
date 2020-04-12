package com.website.web_vue.pojo;

public class FindOrDiscover {

    /**
     * 信息ID
     */
    private Integer mId;
    /**
     * 信息类型（0为失物招领，1为寻物启事）
     */
    private String mType;
    /**
     * 物品类型ID字典
     */
    private String mArticleTypeId;
    /**
     * 公告信息状态（0为未发布，1为已发布）
     */
    private String mPostStatus;
    /**
     * 区域ID字典
     */
    private String mAreaId;
    /**
     * 区域详细位置
     */
    private String mAreaDetail;
    /**
     * 信息发布时间
     */
    private String mLaunchDate;
    /**
     * 信息关联发布用户ID
     */
    private String mUId;
    /**
     * 信息删除状态（0为未删除，1为已删除，默认为0）
     */
    private String mDelStatus;
    /**
     * 信息标题，不超过22个字
     */
    private String mTitle;
    /**
     * 物品（拾到/丢失）时间
     */
    private String mArticleTime;
    /**
     * 物品图片
     */
    private String mImage;

    @Override
    public String toString() {
        return "FindOrDiscover{" +
                "mId=" + mId +
                ", mType='" + mType + '\'' +
                ", mArticleTypeId='" + mArticleTypeId + '\'' +
                ", mPostStatus='" + mPostStatus + '\'' +
                ", mAreaId='" + mAreaId + '\'' +
                ", mAreaDetail='" + mAreaDetail + '\'' +
                ", mLaunchDate='" + mLaunchDate + '\'' +
                ", mUId='" + mUId + '\'' +
                ", mDelStatus='" + mDelStatus + '\'' +
                ", mTitle='" + mTitle + '\'' +
                ", mArticleTime='" + mArticleTime + '\'' +
                ", mImage='" + mImage + '\'' +
                '}';
    }

    public Integer getmId() {
        return mId;
    }

    public void setmId(Integer mId) {
        this.mId = mId;
    }

    public String getmType() {
        return mType;
    }

    public void setmType(String mType) {
        this.mType = mType;
    }

    public String getmArticleTypeId() {
        return mArticleTypeId;
    }

    public void setmArticleTypeId(String mArticleTypeId) {
        this.mArticleTypeId = mArticleTypeId;
    }

    public String getmPostStatus() {
        return mPostStatus;
    }

    public void setmPostStatus(String mPostStatus) {
        this.mPostStatus = mPostStatus;
    }

    public String getmAreaId() {
        return mAreaId;
    }

    public void setmAreaId(String mAreaId) {
        this.mAreaId = mAreaId;
    }

    public String getmAreaDetail() {
        return mAreaDetail;
    }

    public void setmAreaDetail(String mAreaDetail) {
        this.mAreaDetail = mAreaDetail;
    }

    public String getmLaunchDate() {
        return mLaunchDate;
    }

    public void setmLaunchDate(String mLaunchDate) {
        this.mLaunchDate = mLaunchDate;
    }

    public String getmUId() {
        return mUId;
    }

    public void setmUId(String mUId) {
        this.mUId = mUId;
    }

    public String getmDelStatus() {
        return mDelStatus;
    }

    public void setmDelStatus(String mDelStatus) {
        this.mDelStatus = mDelStatus;
    }

    public String getmTitle() {
        return mTitle;
    }

    public void setmTitle(String mTitle) {
        this.mTitle = mTitle;
    }

    public String getmArticleTime() {
        return mArticleTime;
    }

    public void setmArticleTime(String mArticleTime) {
        this.mArticleTime = mArticleTime;
    }

    public String getmImage() {
        return mImage;
    }

    public void setmImage(String mImage) {
        this.mImage = mImage;
    }
}
