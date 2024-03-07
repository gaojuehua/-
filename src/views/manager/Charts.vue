<!--<template>-->
<!--<div>-->
<!--    <el-row :gutter="10">-->
<!--        <el-col :span="12">-->
<!--            <el-card>-->
<!--                <div style="width: 100%;height: 400px" id="line"></div>-->
<!--            </el-card>-->
<!--        </el-col>-->
<!--        <el-col :span="12">-->
<!--            <el-card>-->
<!--                <div style="width: 100%;height: 400px" id="bar"></div>-->
<!--            </el-card>-->
<!--        </el-col>-->
<!--    </el-row>-->

<!--&lt;!&ndash;    <el-row :gutter="10" style="margin: 10px 0">&ndash;&gt;-->
<!--&lt;!&ndash;        <el-col :span="12">&ndash;&gt;-->
<!--&lt;!&ndash;            <el-card>&ndash;&gt;-->
<!--&lt;!&ndash;                <div style="width: 100%;height: 400px" id="pie"></div>&ndash;&gt;-->
<!--&lt;!&ndash;            </el-card>&ndash;&gt;-->
<!--&lt;!&ndash;        </el-col>&ndash;&gt;-->
<!--&lt;!&ndash;    </el-row>&ndash;&gt;-->
<!--</div>-->
<!--</template>-->
<template>
    <div>
<!--        <el-card style="margin: 20px 0; font-size: 18px">-->
<!--            <div style="margin-bottom: 10px">-->
<!--            </div>-->
<!--            <div style="margin: 10px">-->
<!--            </div>-->
<!--        </el-card>-->
        <div style="margin: 20px 0">
            <el-select class="input" v-model="timeRange" placeholder="请选择" @change="load">  <!--  从后台加载最新的数据 -->
                <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
                </el-option>
            </el-select>
        </div>
        <el-card>
            <div id="line" style="width: 100%; height: 400px"></div>
        </el-card>
    </div>
</template>

<script>
import * as echarts from 'echarts'

const option = {
    title: {
        text: '病人病况图',
        left: 'center'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data:['遗传性','细菌性','病毒性','罕见性','季节性'],
        orient: 'vertical',
        left: 'left'
    },
    xAxis: {
        type: 'category',
        data: []
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: '遗传性',
            data: [],
            type: 'line',
            smooth: true
        },
        {
            name: '细菌性',
            data: [],
            type: 'line',
            smooth: true
        },
        {
            name: '病毒性',
            data: [],
            type: 'line',
            smooth: true
        },
        {
            name: '罕见性',
            data: [],
            type: 'line',
            smooth: true
        },
        {
            name: '季节性',
            data: [],
            type: 'line',
            smooth: true
        },
    ]
}

// const option1 = {
//     title: {
//         text: '病人病况图',
//         left: 'center'
//     },
//     tooltip: {
//         trigger: 'axis'
//     },
//     legend: {
//         orient: 'vertical',
//         left: 'right'
//     },
//     xAxis: {
//         type: 'category',
//         data: []
//     },
//     yAxis: {
//         type: 'value'
//     },
//     series: [
//         {
//             name: '遗传性',
//             data: [],
//             type: 'bar',
//             smooth: true
//         },
//         {
//             name: '细菌性',
//             data: [],
//             type: 'bar',
//             smooth: true
//         },
//         {
//             name: '病毒性',
//             data: [],
//             type: 'bar',
//             smooth: true
//         },
//         {
//             name: '罕见性',
//             data: [],
//             type: 'bar',
//             smooth: true
//         },
//         {
//             name: '季节性',
//             data: [],
//             type: 'bar',
//             smooth: true
//         },
//     ]
// }

// const option2 = {
//     title: {
//         text: '季度病人看病情况',
//         subtext: '比例图',     //副标题
//         left: 'center'
//     },
//     tooltip: {
//         trigger: 'item'
//     },
//     legend: {
//         orient: 'vertical',
//         left: 'left'
//     },
//     series: [
//         {
//             name: '占比',
//             type: 'pie',
//             center: ['50%', '60%'],    //调整位置
//             radius: '50%',         //可调整图的大小
//             data: [
//
//             ],
//             emphasis: {
//                 itemStyle: {
//                     shadowBlur: 10,
//                     shadowOffsetX: 0,
//                     shadowColor: 'rgba(0, 0, 0, 0.5)'
//                 }
//             }
//         }
//     ]
// }


export default {
    name: "Charts",
    data() {
        return{
            lineBox: null,
            timeRange: 'week',
            options: [
                {label: '最近一周', value: 'week'},
                {label: '最近一个月', value: 'month'},
                {label: '最近两个月', value: 'month2'},
                {label: '最近三个月', value: 'month3'},
            ]
        }
    },
    mounted() {      //等待界面的元素全都加载完成后初始化
        // //折线图
        // let linetDom = document.getElementById('line');
        // let lineChart = echarts.init(linetDom);


        //柱状图
        // let barDom = document.getElementById('bar');
        // let barChart = echarts.init(barDom);
        // barChart.setOption(option1);

        // //饼图
        // let pieDom = document.getElementById('pie');
        // let pieChart = echarts.init(pieDom);
        // pieChart.setOption(option2);


        // this.$request.get('/charts').then(res =>{
        //     //折线
        //     option.xAxis.data = res.data?.line?.map(v => v.data) || []
        //     option.series[0].data = res.data?.line?.map(v => v.value) || []
        //     option.series[1].data = res.data?.line?.map(v => v.value) || []
        //     lineChart.setOption(option);

            //柱状
            // option1.xAxis.data = res.data?.bar?.map(v => v.name) || []
            // option1.series[0].data = res.data?.bar?.map(v => v.value) || []


            // //饼图
            // option2.series[0].data = res.data?.bar || []
            // pieChart.setOption(option2);
        // })
        this.load()
    },
    methods: {
        load() {
            if (!this.lineBox) {
                this.lineBox = echarts.init(document.getElementById('line'))  // 初始化echarts容器
            }
            // 从后台获取数据
            this.$request.get('/inpantient/lineCharts/' + this.timeRange).then(res => {
                option.xAxis.data = res.data.date
                option.series[0].data = res.data.yichuan
                option.series[1].data = res.data.xijun
                option.series[2].data = res.data.bingdu
                option.series[3].data = res.data.hanjian
                option.series[4].data = res.data.jijie
                this.lineBox.setOption(option)  // 设置容器的属性值，当你的数据发生变化的时候，一定要重新setOption
            })
        }
    }
}
</script>

<style scoped>

</style>