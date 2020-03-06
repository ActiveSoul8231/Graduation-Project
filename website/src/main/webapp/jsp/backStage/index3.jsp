<%--
  Created by IntelliJ IDEA.
  User: yangzhichao
  Date: 2019/9/26
  Time: 8:45 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- cilicili - 主页按键页面  -->
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>装饰加载</title>
    <link rel="stylesheet" href="../../bootstrap-4.4.1-dist/css/bootstrap.css">
    <script src="../../incubator-echarts-4.6.0/dist/echarts.js"></script>
    <script src="../../jquery-3.4.1/jquery-3.4.1.min.js"></script>
    <script src="../../bootstrap-4.4.1-dist/js/bootstrap.js"></script>
    <script src="../../js/popper/popper.js"></script>
<%--https://echarts.apache.org/zh/tutorial.html#5%20%E5%88%86%E9%92%9F%E4%B8%8A%E6%89%8B%20ECharts--%>
<style type="text/css">
    .content-center {
        position: absolute;
        top: 50%;
        left: 50%;
        -ms-transform: translate(-50%, -50%);
        -webkit-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        text-align: center;
        padding: 0 15px;
        color: #FFFFFF;
        width: 100%;
        max-width: 1250px;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="row content-center">
            <div class="col-lg-6 content-left">
                <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
                <div id="main" style="width: 600px;height:400px;"></div>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-5 content-right">
                <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
                <div id="main1" style="width: 600px;height:400px;"></div>
            </div>
        </div>
    </div>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var myChart1 = echarts.init(document.getElementById('main1'));

    var posList = [
        'left', 'right', 'top', 'bottom',
        'inside',
        'insideTop', 'insideLeft', 'insideRight', 'insideBottom',
        'insideTopLeft', 'insideTopRight', 'insideBottomLeft', 'insideBottomRight'
    ];


    var labelOption = {
        show: true,
        position: 'insideBottom',
        distance: 15,
        align: 'left',
        verticalAlign: 'middle',
        rotate: 90,
        formatter: '{c}  {name|{a}}',
        fontSize: 16,
        rich: {
            name: {
                textBorderColor: '#fff'
            }
        }
    };


    option = {
        color: ['#003366', '#006699'],
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        legend: {
            data: ['失物招领', '寻物启事']
        },
        toolbox: {
            show: true,
            orient: 'vertical',
            left: 'right',
            top: 'center',
            feature: {
                mark: {show: true},
                dataView: {show: true, readOnly: false},
                magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        xAxis: [
            {
                type: 'category',
                axisTick: {show: false},
                data: ['${dateList[6]}','${dateList[5]}','${dateList[4]}','${dateList[3]}','${dateList[2]}','${dateList[1]}','${dateList[0]}']
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: '失物招领',
                type: 'bar',
                barGap: 0,
                label: labelOption,
                data: [${sList[6]},${sList[5]},${sList[4]},${sList[3]},${sList[2]},${sList[1]},${sList[0]}]
            },
            {
                name: '寻物启事',
                type: 'bar',
                label: labelOption,
                data: [${xList[6]},${xList[5]},${xList[4]},${xList[3]},${xList[2]},${xList[1]},${xList[0]}]
            },

        ]
    };
    myChart.setOption(option);
    //第二个图表
    option1 = {
        title: {
            text: '院校失物招领网站用户发布信息',
            // subtext: '纯属虚构',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['未完成的信息', '已完成的信息', '用户删除的信息']
        },
        series: [
            {
                name: '访问来源',
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: [
                    {value: ${unfinishedList}, name: '未完成的信息'},
                    {value: ${accomplishList}, name: '已完成的信息'},
                    {value: ${removeList}, name: '用户删除的信息'}
                ],
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

    myChart1.setOption(option1);
</script>
</body>
</html>
