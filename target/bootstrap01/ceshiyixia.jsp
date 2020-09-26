<%--
  Created by IntelliJ IDEA.
  User: 马某
  Date: 2020/9/22
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script src="js/echarts.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript">
        var myChart;
        var test = 10;
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });
        // 使用
        require(
            [
                'echarts',
                'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                myChart = ec.init(document.getElementById('divProgress'));
                var option = {
                    tooltip: {
                        show: true
                    },
                    animation: false,
                    legend: {
                        data: ['销量']
                    },
                    xAxis: [
                        {
                            type: 'category',
                            data: ["衬衫", "羊毛衫", "雪纺衫", "裤子", "高跟鞋", "袜子"]
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value'
                        }
                    ],
                    series: [
                        {
                            "name": "销量",
                            "type": "bar",
                            "data": [5, 20, 40, 10, 10, 20]
                        }
                    ]
                };
                // 为echarts对象加载数据
                myChart.setOption(option);
            }
        );

        //这里用setTimeout代替ajax请求进行演示
        window.setInterval(function () {
            var data = [test, 5, 10, 40, 20, 10];
            $.get("SQLTest.ashx",function(responseTxt,statusTxt,xhr)
            {
                test=responseTxt;
                //if (statusTxt == "success")alert(test);
                if (statusTxt == "error")
                    alert("Error: " + xhr.status + ": " + xhr.statusText);
            });
            data = [test, 5, 10, 40, 20, 10];
            refreshData(data);
        },3000);

        function refreshData(data){
            if(!myChart){
                return;
            }

            //更新数据
            var option = myChart.getOption();
            option.series[0].data = data;
            myChart.setOption(option);
        }
    </script>
</head>

<body>


</body>

</html>
