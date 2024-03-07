<template>
  <div>
      <div>
          <el-input style="width: 200px" v-model="name" placeholder="请输入查询人姓名"></el-input>
          <el-input style="width: 200px;margin-left: 5px" v-model="idcard" placeholder="请输入查询人身份证号"></el-input>
          <el-button type="primary" style="margin-left: 5px" @click="load()">查询</el-button>
          <el-button type="info" style="margin-left: 5px" @click="reset()">重置</el-button>
      </div>

      <el-table :data="tableData" stripe :header-cell-style="{ backgroundColor: 'aliceblue', color: '#666' }">
          <el-table-column prop="name" label="姓名" align="center"></el-table-column>
          <el-table-column prop="sex" label="性别" align="center"></el-table-column>
          <el-table-column prop="age" label="年龄" align="center"></el-table-column>
          <el-table-column prop="phone" label="电话" align="center"></el-table-column>
          <el-table-column prop="email" label="邮箱" align="center"></el-table-column>
          <el-table-column prop="sort" label="科室" align="center"></el-table-column>
          <el-table-column prop="ilk" label="生病类型" align="center"></el-table-column>
          <el-table-column prop="user" label="医生" align="center"></el-table-column>
          <el-table-column prop="time" label="时间" align="center"></el-table-column>
          <el-table-column prop="content" label="病人病历">
              <template v-slot="scope">
                  <el-button @click="showContent(scope.row.content,scope.row.name,scope.row.sex,scope.row.age,scope.row.sort,scope.row.user,scope.row.time,scope.row.ilk)" size="mini"  type="success">显示内容</el-button>
              </template>
          </el-table-column>
      </el-table>

      <div style="margin: 10px 0">
          <el-pagination
                  @current-change="handleCurrentChange"
                  :current-page="pageNum"
                  :page-size="pageSize"
                  layout="total, prev, pager, next"
                  :total="total">
          </el-pagination>
      </div>

      <el-dialog title="病人病历查看" :visible.sync="fromVisible1" width="60%">
          <el-card class="w-e-text">
              <div style="margin-top: 10px">患者姓名：{{name}}</div>
              <div style="margin-top: 10px">年龄：{{age}}</div>
              <div style="margin-top: 10px">性别：{{sex}}</div>
              <div style="margin-top: 10px">科室：{{sort}}</div>
              <div style="margin-top: 10px">生病类型：{{ilk}}</div>
              <div style="margin-top: 10px">治疗医师：{{user}}</div>
              <div style="margin-top: 10px">病情病因及状况：<span>{{delHtmlTag(content)}}</span></div>
              <span style="display: flex;justify-content: flex-end;margin-right: 70px;margin-top: 20px" >时间：{{time}}</span>

          </el-card>
          <div slot="footer" class="dialog-footer">
              <el-button type="primary" @click="fromVisible1 = false">确 定</el-button>
          </div>
      </el-dialog>
  </div>

</template>

<script>
export default {
    name: "InpantientText",
    data(){
        return{
            tableData: [],  // 所有的数据
            pageNum: 1,   // 当前的页码
            pageSize: 5,  // 每页显示的个数
            name: '',
            total: 0,
            fromVisible1: false,
            sort: '',
            time: '',
            content: '',
            user: JSON.parse(localStorage.getItem('honey-user') || '{}'),
            idcard: '',
            age: '',
            sex: '',
            ilk: '',
        }
    },
    created() {

    },
    methods:{
        delHtmlTag (str) {
            return str.replace(/<[^>]+>/g, '')
        },
        handleCurrentChange() {
            this.load()
        },
        showContent(content,name,sex,age,sort,user,time,ilk){
            this.content = content
            this.name = name
            this.sex = sex
            this.age = age
            this.sort = sort
            this.user = user
            this.time = String(time)
            this.ilk = ilk
            this.fromVisible1 = true
        },
        reset(){
            this.name = ''
            this.idcard = ''
            this.load()
        },
        load(){
            if(this.name !== ''||this.idcard !== ''){
                this.$request.get('/inpantient/selectByMoPage',{
                    params:{
                        pageNum: this.pageNum,
                        pageSize: this.pageSize,
                        name: this.name,
                        idcard: this.idcard,
                    }
                }).then(res =>{
                    this.tableData = res.data.records
                    this.total = res.data.total
                })
            }
        },
    }
}
</script>

<style scoped>

</style>