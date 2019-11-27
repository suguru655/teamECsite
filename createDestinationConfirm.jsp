<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/table.css">
<link rel="stylesheet" href="./css/radish.css">
<title>宛先情報入力確認画面</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="contents">
	<h1>宛先情報入力確認画面</h1>
	<table class="importConfirmTable">
		<tr>
			<th scope="row"><s:label value="姓"/></th>
			<td><s:property  value="%{#session.familyName}"/></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="名"/></th>
			<td><s:property value="%{#session.firstName}"   /></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="姓ふりがな"/></th>
			<td><s:property value="%{#session.familyNameKana}"  /></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="名ふりがな"/></th>
			<td><s:property  value="%{#session.firstNameKana}"   /></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="住所"/></th>
			<td><s:property value="%{#session.userAddress}"  /></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="電話番号"/></th>
			<td><s:property  value="%{#session.telNumber}"   /></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="メールアドレス"/></th>
			<td><s:property  value="%{#session.email}" /></td>
		</tr>
	</table>

	<s:form action="CreateDestinationCompleteAction">
		<div class="submitBtnBox">
			<s:submit value="登録" class="submitBtn"/>
		</div>
	</s:form>

	<s:form action="CreateDestinationAction">
		<div class="submitBtnBox">
			<s:submit value="戻る" class="submitBtn"/>
		</div>
		<s:hidden id="backFlag" name="backFlag" value="1"/>
	</s:form>
</div>
</body>
</html>