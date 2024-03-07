<template>
    <div>
        <div>
            <el-input style="width: 200px" placeholder="查询标题" v-model="title"></el-input>
            <el-button type="primary" style="margin-left: 10px" @click="load(1)">查询</el-button>
            <el-button type="info" @click="reset">重置</el-button>
        </div>
        <div  style="margin: 10px 0">
            <el-button type="primary" plain @click="handleAdd">新增</el-button>
            <el-button type="danger" plain @click="delBatch">批量删除</el-button>
        </div>
        <el-table :data="tableData" stripe :header-cell-style="{ background:'aliceblue',color:'#666'}" @selection-change="handleSelectionChange">
            <el-table-column type="selection" width="55" align="center"></el-table-column>
            <el-table-column prop="id" label="序号" width="70"></el-table-column>
            <el-table-column prop="title" label="标题"></el-table-column>
            <el-table-column prop="content" label="内容" show-overflow-tooltip></el-table-column>
            <el-table-column prop="user" label="发布人"></el-table-column>
            <el-table-column prop="time" label="发布时间"></el-table-column>
            <el-table-column label="是否公开">
                <template v-slot="scope">
                    <el-switch v-model="scope.row.open" @change="changeOpen(scope.row)"></el-switch>
                </template>
            </el-table-column>
            <el-table-column></el-table-column>
            <el-table-column label="操作" align="center" width="180">
                <template v-slot="scope">
                    <el-button type="primary" plain @click="handleEdit(scope.row)">编辑</el-button>
                    <el-button type="danger" plain @click="del(scope.row.id)">删除</el-button>
                </template>
            </el-table-column>
        </el-table>

        <div style="margin: 10px 0">
            <el-pagination
                @current-change="handleCurrentChange"
                :current-page="pageNum"
                :page-size="pageSize"
                layout="total, prev, pager, next, jumper"
                :total="total">
            </el-pagination>
        </div>

        <el-dialog title="公告信息" :visible.sync="fromVisible" width="40%" :close-on-click-modal="false">
            <el-form :model="form" label-width="80px" style="padding-right: 20px" :rules="rules" ref="formRef">
                <el-form-item label="标题" prop="title">
                    <el-input v-model="form.title" placeholder="标题" ></el-input>
                </el-form-item>
                <el-form-item label="内容" prop="content">
                    <el-input type="textarea" v-model="form.content" placeholder="内容"></el-input>
                </el-form-item>
            </el-form>

            <div slot="footer" class="dialog-footer">
                <el-button @click="fromVisible = false">取 消</el-button>
                <el-button type="primary" @click="save">确 定</el-button>
            </div>
        </el-dialog>

    </div>
</template>

<script>

export default {
    name: "Notice",
    data(){
        return{
            tableData:[],           //所有的数据
            pageNum: 1,             //当前的页码
            pageSize: 5,            //每页显示的个数
            username: '',
            title: '',
            total: 0,
            fromVisible: false,
            form: {},
            user:JSON.parse(localStorage.getItem('honey-user') || '{}'),
            rules: {
                title:[
                    { required: true, message: '请输入标题', trigger: 'blur'}
                ],
            },
            ids: [],
            content: '',
        }
    },created() {
        this.load()
    },
    methods:{
        changeOpen(form){
            // 调用更新的接口  跟新数据到数据库
            this.form = JSON.parse(JSON.stringify(form))    // 深拷贝数据
            this.sendSavaRequest()     //直接发请求
        },
        delBatch(){
            if (!this.ids.length){
                this.$message.warning('请选择数据')
                return
            }
            this.$confirm('您确认批量删除这些数据吗？', '确认删除' ,{type: "warning"}).then(response =>{
                this.$request.delete('/notice/delete/batch', {data: this.ids }).then(res =>{
                    if (res.code === '200'){   //表示操作成功
                        this.$message.success('操作成功')
                        this.load(1)
                    }else {
                        this.$message.error(res.msg)  //弹出错误消息
                    }
                })
            }).catch(() => {})
        },
        handleSelectionChange(rows) {     //当前选中的所有的行数据
            this.ids = rows.map(v => v.id)   // 将对象数组变成数字数组map
        },
        del(id){
            this.$confirm('您确认删除吗？', '确认删除' ,{type: "warning"}).then(response =>{
                this.$request.delete('/notice/delete/' + id).then(res =>{
                    if (res.code === '200'){   //表示操作成功
                        this.$message.success('操作成功')
                        this.load(1)
                    }else {
                        this.$message.error(res.msg)  //弹出错误消息
                    }
                })
            }).catch(() => {})
        },
        handleEdit(row){        //编辑数据
            this.form = JSON.parse(JSON.stringify(row))      //给form对象赋值  注意要深拷贝
            this.fromVisible = true    //打开弹窗
        },
        handleAdd(){             //新增数据
            this.form = {}   //新增数据时清空数据
            this.fromVisible = true    //打开弹窗
        },
        save(){   //保存按钮触发的逻辑 他会触发新增或更新
            this.$refs.formRef.validate((valid)=>{
                if(valid){
                    this.sendSavaRequest()
                }
            })
        },
        sendSavaRequest(){
            this.$request({
                url: this.form.id ? '/notice/update': '/notice/add',
                method: this.form.id ? 'PUT':'POST',
                data: this.form
            }).then(res =>{
                if(res.code === '200'){  //表示成功保存
                    this.$message.success('保存成功')
                    this.load(1)
                    this.fromVisible = false
                }else {
                    this.$message.error(res.msg)  //弹出错误信息
                }
            })
        },
        reset(){
            this.title = ''
            this.load()
        },
        load(pageNum){             //分页查询
            if(pageNum) this.pageNum = pageNum
            this.$request.get('/notice/selectByMoPage',{
                params:{
                    pageNum: this.pageNum,
                    pageSize: this.pageSize,
                    username: this.username,
                    title: this.title,
                }
            }).then(res=>{
                this.tableData = res.data.records
                this.total = res.data.total
            })
        },
        handleCurrentChange(pageNum){
            this.load(pageNum)
        },
    }
}
</script>

<style >
.el-tooltip__popper{ max-width:300px !important;}
</style>
