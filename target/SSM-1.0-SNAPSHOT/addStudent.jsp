<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册学生</title>
</head>
<body>
    <form action="addStudent.do">
        <table>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name"/> </td>
            </tr>
            <tr>
                <td>年龄</td>
                <td><input type="text" name="age"/> </td>
            </tr>
            <tr>
                <td><input type="submit" value="注册" /> </td>
                <td><input type="reset"/> </td>
            </tr>
        </table>
    </form>
</body>
</html>
