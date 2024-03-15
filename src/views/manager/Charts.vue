<template>
  <div class="root">
    <div class="chart" id="chart" style="width: 100%;height: 100%"></div>
  </div>
</template>

<script>
export default {
  name: "EchartsDemo",
  data(){
    return{
      option :{
        animationDuration: 10000,
        dataset: [
          {
            id: 'dataset_raw',
            source: _rawData
          },
          ...datasetWithFilters
        ],
        title: {
          text: 'Income of Germany and France since 1950'
        },
        tooltip: {
          order: 'valueDesc',
          trigger: 'axis'
        },
        xAxis: {
          type: 'category',
          nameLocation: 'middle'
        },
        yAxis: {
          name: 'Income'
        },
        grid: {
          right: 140
        },
        series: [{
          name: '销量',
          type: 'bar',
          data: [5, 20, 36, 10, 10, 20]
        }]
      }
    }
  },
  mounted() {
    this.initChart();
  },
  methods:{
    initChart(){
      // 基于准备好的dom，初始化echarts实例
      const myChart = this.$echarts.init(document.getElementById('chart'));
      // 绘制图表
      myChart.setOption({
        title: {
          text: '病情分类图'
        },
        grid: {
          left: "40px",
          right: "10px",
          bottom: "30px"
        },
        tooltip: {},
        xAxis: {
          data: ['衬衫', '羊毛衫', '雪纺衫', '裤子', '高跟鞋', '袜子']
        },
        yAxis: {},
        series: [{
          name: '销量',
          type: 'line',
          data: [5, 20, 36, 10, 10, 20]
        },
          {
            name: '销量',
            type: 'line',
            data: [1, 2, 36, 40, 70, 100]
          },
          {
            name: '销量',
            type: 'line',
            data: [23, 25, 326, 110, 10, 20]
          }
        ]
      });
    },
  }
}
</script>

<style scoped>
.root{
  width:100%;
  height:90%;
  display:flex;
  justify-content:center;
  align-items:center;
}

</style>

