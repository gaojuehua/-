<template>
  <div>
    <div class="fontClass">
      <el-input style="width: 200px" placeholder="查询姓名" v-model="name"></el-input>
      <el-select style="margin: 0 5px" v-model="sort" placeholder="请选择科室">
        <el-option v-for="item in ['儿科', '内科', '牙科','骨科','外科','眼科','肛肠科','皮肤科','耳鼻喉科','妇科']" :key="item" :value="item"
                   :label="item"></el-option>
      </el-select>
      <el-date-picker
          v-model="schedule"
          type="date"
          format="yyyy 年 MM 月 dd 日"
          value-format="yyyy/MM/dd"
          placeholder="选择日期">
      </el-date-picker>
      <el-button type="success" style="margin-left: 10px" @click="load(1)" icon="el-icon-search">查询</el-button>
      <el-button type="primary" style="margin-left: 10px" @click="scheduleMethod()" icon="el-icon-edit" v-if="user.role != '用户'">排班</el-button>
      <el-button @click="reset">重置</el-button>
    </div>

    <el-table :data="tableData" stripe :header-cell-style="{ backgroundColor: 'aliceblue', color: '#666' }"
              highlight-current-row
              @current-change="handleSelectionChange"
              style="margin-top: 10px">

      <el-table-column
          type="index"
          width="50">
      </el-table-column>
      <el-table-column prop="id" label="序号" width="70" align="center"></el-table-column>
      <el-table-column label="头像">
        <template v-slot="scope">
          <div style="display: flex;align-items: center">
            <el-image style="width: 50px;height: 50px;border-radius: 50%" v-if="scope.row.avatar"
                      :src="scope.row.avatar" :preview-src-list="[scope.row.avatar]"></el-image>
          </div>
        </template>
      </el-table-column>
      <el-table-column prop="username" label="用户名"></el-table-column>
      <el-table-column prop="name" label="姓名"></el-table-column>
      <!--        <el-table-column prop="description" label="简介" show-overflow-tooltip></el-table-column>-->
      <el-table-column prop="phone" label="电话"></el-table-column>
      <el-table-column prop="email" label="邮箱"></el-table-column>
      <el-table-column prop="sort" label="科室"></el-table-column>
      <el-table-column prop="schedule" label="排班" width="150"></el-table-column>
      <el-table-column prop="states" label="状态"></el-table-column>
      <el-table-column prop="time" label="入职时间"></el-table-column>
      <el-table-column prop="post" label="职位"></el-table-column>
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
    <div>
      <el-dialog title="收货地址" :visible.sync="dialogFormVisible" width="26%">
        <el-form ref="form"  label-width="80px">
          <el-form-item label="用户姓名">
            <el-input v-model="form.name" :disabled="true"></el-input>
          </el-form-item>
          <el-form-item label="排班日期" >
            <el-date-picker type="date" placeholder="选择日期" v-model="form.date" style="width: 100%;"
                            @change="changeWeek"
                            format="yyyy 年 MM 月 dd 日"
                            value-format="yyyy/MM/dd"
                            :picker-options="pickerOptions"
            />
          </el-form-item>
          <el-form-item label="排班时间">
            <el-input v-model="weekTime" :disabled="true"></el-input>
          </el-form-item>
        </el-form>

        <div slot="footer" class="dialog-footer">
          <el-button @click="dialogFormVisible = false">取 消</el-button>
          <el-button type="primary" @click="savaSchedule">确 定</el-button>
        </div>
      </el-dialog>
    </div>
  </div>
</template>

<script>
export default {
  name: "DoctorSchedule",
  data() {
    return {
      user:{},
      tableData: [],
      SelectionChange: null,
      pageNum: 1,
      pageSize: 5,
      name: '',
      total: 0,
      sort: '',
      schedule: '',
      dialogTableVisible: false,
      dialogFormVisible: false,
      form: {},
      weekTime:"",
      ss1:"",
      formLabelWidth: '150px',
      defaultValue: '',
      pickerOptions: {
        disabledDate(time) {
          return time.getTime() < Date.now() - 8.64e7;
        }
      },
    }
  },
  created() {
    this.load();
    debugger;
    let userJson = localStorage.getItem("honey-user");
    this.user = JSON.parse(userJson)
  },
  methods: {
    handleCurrentChange(pageNum) {
      this.load(pageNum)
    },
    reset() {
      this.name = ''
      this.sort = ''
      this.schedule = ''
      this.load()
    },
    load(pageNum) {
      if (pageNum) this.pageNum = pageNum
      if(this.schedule){
        let weekTime = this.getDateWeek(this.schedule);
        this.schedule = this.schedule + "【" + weekTime+"】"
      }
      this.$request.get('/doctor/selectByPage', {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          name: this.name,
          sort: this.sort,
          schedule: this.schedule,
        }
      }).then(res => {
        this.tableData = res.data.records
        this.total = res.data.total
      })
    },
    handleSelectionChange(val) {
      this.SelectionChange = val;
    },
    scheduleMethod() {
      if(this.SelectionChange != null &&  this.SelectionChange != "" ){
        this.form = {};
        this.weekTime = "";
        this.dialogFormVisible = true;
        this.form.name = this.SelectionChange.name;
      }else{
        this.$message({
          message: '请选择排班用户',
          type: 'warning'
        });
      }
    },
    changeWeek(data) {
      this.weekTime = this.getDateWeek(data);
    },
    savaSchedule(){
      let _this = this;
      this.dialogFormVisible = false;
      this.SelectionChange.schedule = this.form.date + "【" + this.weekTime+"】"
      this.$request({
        url: '/doctor/update',
        method: 'PUT',
        data: this.SelectionChange
      }).then(res =>{
        if(res.code === '200'){  //表示成功保存
          _this.$message.success('保存成功')
          _this.load(1)
        }else {
          _this.$message.error(res.msg)  //弹出错误信息
        }
        _this.SelectionChange = null;
      })
    },
    getDateWeek(date) {
      const weekDay = ['周日', '周一', '周二', '周三', '周四', '周五', '周六']
      const myDate = new Date(Date.parse(date))
      return weekDay[myDate.getDay()]
    },

  }
}
</script>

<style scoped>
.fontClass{
  margin-bottom:20px;
  margin-top:5px;
  padding: 5px;
  box-shadow:  0.5px 0.5px 0.5px 0.5px ;
  border: 1px solid rgba(175, 169, 169, 0.62);
  border-radius: 5px;

}

</style>
