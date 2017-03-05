<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>小米在线预约系统</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <style type="text/css">
        * {
            margin: 0 auto;
            padding: 0 auto;
        }

        h1 {
            text-align: center;
            margin-top: 30px;
        }

        ul {
            margin-top: 30px;
        }

        ul > li {
            float: left;
            width: 33%;
            list-style-type: none;
            text-align: center;
        }

        button {
            color: blue;
            font-weight: 800;
        }
    </style>
</head>
<body>
<h1>8月15中午12点开放购买</h1>
<ul>
    <s:iterator value="phones">
        <li>
            <h3><s:property value="phoneName"/></h3>
            <p><s:property value="description"/></p>
            <p>￥<s:property value="price"/>起</p>
            <button onclick='buy("<s:property value="phoneName"/>", "2017-8-15 12:00:00")'>预约</button>
        </li>
    </s:iterator>
</ul>

<script type="text/javascript">

    function buy(phoneName, buyTime) {

        location.href = "${pageContext.request.contextPath}/schedule/edit?phoneName="
            + phoneName
            + "&buyTime="
            + buyTime;
    }

</script>

</body>
</html>