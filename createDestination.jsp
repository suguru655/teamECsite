<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/table.css">
<link rel="stylesheet" href="./css/radish.css">
<title>宛先情報入力画面</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="contents">
	<h1>宛先情報入力画面</h1>

	<s:if test="familyNameErrorMessageList!=null && familyNameErrorMessageList.size()>0">
		<div class="error">
			<div class="error-message">
				<s:iterator value="familyNameErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>

	<s:if test="firstNameErrorMessageList!=null && firstNameErrorMessageList.size()>0">
		<div class="error">
			<div class="error-message">
				<s:iterator value="firstNameErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>

	<s:if test="familyNameKanaErrorMessageList!=null && familyNameKanaErrorMessageList.size()>0">
		<div class="error">
			<div class="error-message">
				<s:iterator value="familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>

	<s:if test="firstNameKanaErrorMessageList!=null && firstNameKanaErrorMessageList.size()>0">
		<div class="error">
			<div class="error-message">
				<s:iterator value="firstNameKanaErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>

	<s:if test="userAddressErrorMessageList!=null && userAddressErrorMessageList.size()>0">
		<div class="error">
			<div class="error-message">
				<s:iterator value="userAddressErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>

	<s:if test="telNumberErrorMessageList!=null && telNumberErrorMessageList.size()>0">
		<div class="error">
			<div class="error-message">
				<s:iterator value="telNumberErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>

	<s:if test="emailErrorMessageList!=null && emailErrorMessageList.size()>0">
		<div class="error">
			<div class="error-message">
				<s:iterator value="emailErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>

	<s:form action="CreateDestinationConfirmAction">
	<table class="importConfirmTable">
		<tr>
			<th scope="row"><s:label value="姓"/></th>
			<td><s:textfield name="familyName" value="%{#session.familyName}" placeholder="姓" class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="名"/></th>
			<td><s:textfield name="firstName" value="%{#session.firstName}" placeholder="名" class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="姓ふりがな"/></th>
			<td><s:textfield name="familyNameKana" value="%{#session.familyNameKana}" placeholder="姓ふりがな" class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="名ふりがな"/></th>
			<td><s:textfield name="firstNameKana" value="%{#session.firstNameKana}" placeholder="名ふりがな" class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="住所"/></th>
			<td><s:textfield name="userAddress" value="%{#session.userAddress}" placeholder="住所" class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="電話番号"/></th>
			<td><s:textfield name="telNumber" value="%{#session.telNumber}" placeholder="電話番号" class="txt" /></td>
		</tr>

		<tr>
			<th scope="row"><s:label value="メールアドレス"/></th>
			<td><s:textfield name="email" value="%{#session.email}" placeholder="メールアドレス" class="txt" /></td>
		</tr>
	</table>

	<div class="submitBtnBox">
		<s:submit value="確認" class="submitBtn" />
	</div>

	</s:form>
</div>
</body>
</html>