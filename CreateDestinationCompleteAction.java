package com.internousdev.radish.action;

import java .util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.radish.dao.DestinationInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class CreateDestinationCompleteAction extends ActionSupport implements SessionAware {
	private Map<String,Object> session;
	public String execute(){
		//sessionがタイムアウトのチェック
		String tempLogined = String.valueOf(session.get("logined"));
		int logined = "null".equals(tempLogined)? 0 : Integer.parseInt(tempLogined);
		if(logined != 1) {
			return "loginError";
		}

		String result =ERROR;
		DestinationInfoDAO destinationInfoDAO = new DestinationInfoDAO();
		//セッションの値を文字列型に変換し挿入する。
		int count = destinationInfoDAO.insert(
				session.get("userId").toString(),
				session.get("familyName").toString(),
				session.get("firstName").toString(),
				String.valueOf(session.get("familyNameKana")),
				String.valueOf(session.get("firstNameKana")),
				String.valueOf(session.get("email")),
				String.valueOf(session.get("telNumber")),
				session.get("userAddress").toString()
			);
		if(count >0){
			result =SUCCESS;
		}

		session.remove("familyName");
		session.remove("firstName");
		session.remove("familyNameKana");
		session.remove("firstNameKana");
		session.remove("email");
		session.remove("telNumber");
		session.remove("userAddress");

		return result;
	}

	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object>session){
		this.session = session;
	}
}
