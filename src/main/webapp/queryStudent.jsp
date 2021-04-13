<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询学生</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            x();
            $("#btn").click(function () {
                x();
            })
        })
        function x() {
            $.ajax({
                url:"queryStudent.do",
                type:"get",
                dateType:"json",
                success:function (data) {
                    //清空数据
                    $("#info").html("");
                    //增加数据
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>").
                        append("<td>"+n.id+"</td>").
                        append("<td>"+n.name+"</td>").
                        append("<td>"+n.age+"</td>").append("</tr>");
                    })
                }
            })
        }
    </script>
</head>
<body>
    <table>
        <thead>
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>年龄</td>
        </tr>
        </thead>
        <tbody id="info">

        </tbody>
        <input type="button" id="btn" value="查询数据" />
    </table>
</body>
</html>
