<template>
    <div>
        <div class="search">
            <el-input style="width: 200px" placeholder="查询医生" v-model="name"></el-input>
            <el-select style="margin: 0 5px" placeholder="请选择科室" v-model="sort">
                <el-option v-for="item in ['儿科', '内科', '牙科','骨科','外科','眼科','肛肠科','皮肤科','耳鼻喉科','妇科']" :key="item" :value="item" :label="item"></el-option>
            </el-select>
            <el-button type="primary" style="margin-left: 10px" @click="load(1)">查询</el-button>
            <el-button type="info" @click="reset">重置</el-button>
        </div>
        
        <div class="table" style="margin-top: 10px">
            <el-row :gutter="20" >
             <el-col :span="6" v-for="item in tableData" style="margin-bottom: 10px">
                 <div style="text-align: center;background-color: #ecf8fd;">
                     <img :src="item.avatar" alt="" style="width: 100px; height: 100px; border-radius: 50%;margin-top: 10px">
                     <div style="font-weight: 550;margin-top: 10px">
                         姓名：{{item.name}}
                         <div style="font-weight: 500;margin-left: 10px;color: #383535;">科室：{{item.sort}}
                         <div>
                           职位：{{item.post}}
                         </div>
                             <div>
                                 状态：{{item.states}}
                             </div>
                         </div>
                     </div>
                     <div style="margin-top: 10px; padding: 0 20px;text-align: left;overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 4">
<!--                         overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 4  只显示4行数据多出的数据以...代替-->
                         简介：{{item.description}}
                     </div>
                 </div>
             </el-col>
            </el-row>
        </div>
        

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
    name: "DoctorMessage",
    data() {
        return {
            fileList: [],
            tableData: [],  // 所有的数据
            pageNum: 1,   // 当前的页码
            pageSize: 8,  // 每页显示的个数
            name: '',
            total: 0,
            user: JSON.parse(localStorage.getItem('honey-user') || '{}'),
            sort: '',
        }
    },
    created() {
        this.load()
    },
    methods: {
        reset() {
            this.name = ''
            this.sort = ''
            this.load()
        },
        load(pageNum) {  // 分页查询
            if (pageNum)  this.pageNum = pageNum
            this.$request.get('/doctor/selectByMoPage0', {
                params: {
                    pageNum: this.pageNum,
                    pageSize: this.pageSize,
                    name: this.name,
                    sort: this.sort,
                }
            }).then(res => {
                this.tableData = res.data.records
                this.total = res.data.total
            })
        },
        handleCurrentChange(pageNum) {
            this.load(pageNum)
        },
    }
}
</script>

<style scoped>

</style>