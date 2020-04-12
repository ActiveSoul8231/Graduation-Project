package com.website.web_vue.utils;
/**
 * 简单接口返回类
 *
 */
public class ResultUtil {
	public static final String OK = "200";// 正常
	public static final String NODATA = "201";// 无数据
	public static final String APPERROR = "400";// APP参数异常
	public static final String SERERROR = "500";// 服务器内部异常
	private String msg = "";//信息
	private String state = "";//状态

	private Object data;
	
	public ResultUtil(String state) {
		this.state = state;
	}


	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "ResultUtil [msg=" + msg + ", state=" + state + ", data=" + data + "]";
	}

}
