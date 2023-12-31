<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="head.jsp"%>


<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户添加页面</span>
        </div>
        <div class="providerAdd">
            <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath }/addNewUser.do">
                <div>
                    <label for="userCode">用户编码：</label>
                    <input type="text" name="userCode" id="userCode" value="">
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="userName">用户名称：</label>
                    <input type="text" name="userName" id="userName" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="userPassword">用户密码：</label>
                    <input type="password" name="userPassword" id="userPassword" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="ruserPassword">确认密码：</label>
                    <input type="password" name="ruserPassword" id="ruserPassword" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label >用户性别：</label>
					<select name="gender" id="gender">
					    <option value="1" selected="selected">男</option>
					    <option value="2">女</option>
					 </select>
                </div>
                <div>
                    <label for="birthday">出生日期：</label>
                    <input type="text" Class="Wdate" id="birthday" name="birthday" 
					readonly="readonly" onclick="WdatePicker();">
					<font color="red"></font>
                </div>
                <div>
                    <label for="phone">用户电话：</label>
                    <input type="text" name="phone" id="phone" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label for="address">用户地址：</label>
                   <input name="address" id="address"  value="">
                </div>
                <div>
                    <label >用户角色：</label>
                    <!-- 列出所有的角色分类 -->
                    <label>
                        <select name="userRole">
                            <c:forEach items="${RoleNames}" var="RoleName" varStatus="loop">
                                <c:set var="index" value="${loop.index + 1}" />
                                <option value="${index}">${RoleName}</option>
                            </c:forEach>
                        </select>
                    </label>
                </div>
                <div class="providerAddBtn">
                    <input type="submit" name="add" id="add" value="保存" >	
                    <input type="button" id="back" name="back" onclick="javascript:window.history.back(-1);" value="返回"/>	
                </div>
            </form>
        </div>
</div>
</section>
<%@include file="foot.jsp" %>
<script>
    document.getElementById("userForm").onsubmit = function () {
        // 验证用户编码是否有数据
        var userCode = document.getElementById("userCode").value;
        if (userCode.trim() === "") {
            document.getElementById("userCodeError").innerText = "请输入用户编码";
            return false; // 阻止表单提交
        } else {
            document.getElementById("userCodeError").innerText = ""; // 清空错误提示
        }

        // 可以继续验证其他表单字段...

        return true; // 允许表单提交
    };
</script>
