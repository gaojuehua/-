<template>
<div>
    <div >
        <el-input style="width: 200px" placeholder="查询姓名" v-model="name"></el-input>
        <el-select style="margin: 0 5px" v-model="sort" placeholder="请选择科室">
            <el-option v-for="item in ['儿科', '内科', '牙科','骨科','外科','眼科','肛肠科','皮肤科','耳鼻喉科','妇科']" :key="item" :value="item" :label="item"></el-option>
        </el-select>
        <el-button type="primary" style="margin-left: 10px" @click="load(1)">查询</el-button>
        <el-button type="info" @click="reset">重置</el-button>
    </div>

    <el-table :data="tableData" stripe :header-cell-style="{ backgroundColor: 'aliceblue', color: '#666' }" style="margin-top: 10px">
        <el-table-column prop="id" label="序号" width="70" align="center"></el-table-column>
        <el-table-column label="头像" >
            <template v-slot="scope">
                <div style="display: flex;align-items: center">
                    <el-image style="width: 50px;height: 50px;border-radius: 50%" v-if="scope.row.avatar" :src="scope.row.avatar" :preview-src-list="[scope.row.avatar]"></el-image>
                </div>
            </template>
        </el-table-column>
        <el-table-column prop="username" label="用户名"></el-table-column>
        <el-table-column prop="name" label="姓名"></el-table-column>
<!--        <el-table-column prop="description" label="简介" show-overflow-tooltip></el-table-column>-->
        <el-table-column prop="phone" label="电话"></el-table-column>
        <el-table-column prop="email" label="邮箱"></el-table-column>
        <el-table-column prop="sort" label="科室"></el-table-column>
        <el-table-column prop="schedule" label="排班"></el-table-column>
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
</div>
</template>

<script>
export default {
    name: "DoctorSchedule",
    data(){
        return{
            tableData: [],
            pageNum: 1,
            pageSize: 5,
            name: '',
            total : 0,
            sort: '',
            schedule: '',
        }
    },
    created() {
        this.load()
    },
    methods:{
        handleCurrentChange(pageNum){
          this.load(pageNum)
        },
        reset() {
            this.name = ''
            this.sort = ''
            this.schedule = ''
            this.load()
        },
        load(pageNum){
            if(pageNum) this.pageNum = pageNum
            this.$request.get('/doctor/selectByPage',{
                params:{
                    pageNum: this.pageNum,
                    pageSize: this.pageSize,
                    name: this.name,
                    sort: this.sort,
                    schedule: this.schedule,
                }
            }).then(res =>{
                this.tableData = res.data.records
                this.total = res.data.total
            })
        },
    }
}
</script>

<style scoped>

</style>