<template>
    <div>
        <div>
            <el-input style="width: 200px" placeholder="姓名查询" v-model="name"></el-input>
            <el-input style="width: 200px;margin-left: 5px" placeholder="身份证号查询" v-model="idcard"></el-input>
            <el-button type="primary" style="margin-left: 10px" @click="load(1)">查询</el-button>
            <el-button type="info" @click="reset">重置</el-button>
        </div>
        <div style="margin: 10px 0">
            <el-button type="primary" plain @click="handleAdd">新增</el-button>
            <el-button type="danger" plain @click="delBatch">批量删除</el-button>
        </div>
        <el-table :data="tableData" stripe :header-cell-style="{ backgroundColor: 'aliceblue', color: '#666' }" @selection-change="handleSelectionChange">
            <el-table-column type="selection" width="55" align="center"></el-table-column>
            <el-table-column prop="id" label="序号" width="70" align="center"></el-table-column>
            <el-table-column prop="name" label="姓名"></el-table-column>
            <el-table-column prop="sex" label="性别"></el-table-column>
            <el-table-column prop="age" label="年龄"></el-table-column>
            <el-table-column prop="phone" label="电话"></el-table-column>
            <el-table-column prop="email" label="邮箱"></el-table-column>
            <el-table-column prop="sort" label="科室"></el-table-column>
            <el-table-column prop="ilk" label="生病类型"></el-table-column>
            <el-table-column prop="user" label="医生"></el-table-column>
            <el-table-column prop="time" label="时间"></el-table-column>
            <el-table-column prop="content" label="病人病历">
                <template v-slot="scope">
                    <el-button @click="showContent(scope.row.content,scope.row.name,scope.row.sex,scope.row.age,scope.row.sort,scope.row.user,scope.row.time,scope.row.ilk)" size="mini"  type="success">显示内容</el-button>
                </template>
            </el-table-column>
            <el-table-column label="操作" align="center" width="180">
                <template v-slot="scope">
                    <el-button size="mini" type="primary" plain @click="handleEdit(scope.row)">编辑</el-button>
                    <el-button size="mini" type="danger" plain @click="del(scope.row.id)">删除</el-button>
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

        <el-dialog title="新增病历信息" :visible.sync="fromVisible" width="50%" @close="closeDialog">
            <el-form :model="form" label-width="80px" style="padding-right: 20px" :rules="rules" ref="formRef">
                <el-form-item label="姓名" prop="name">
                    <el-input v-model="form.name" placeholder="姓名"></el-input>
                </el-form-item>
                <el-form-item label="身份证号" prop="idcard">
                    <el-input v-model="form.idcard" placeholder="身份证号"></el-input>
                </el-form-item>
                <el-form-item label="性别" prop="sex">
                    <el-input v-model="form.sex" placeholder="性别"></el-input>
                </el-form-item>
                <el-form-item label="年龄" prop="age">
                    <el-input v-model="form.age" placeholder="年龄"></el-input>
                </el-form-item>
                <el-form-item label="电话" prop="phone">
                    <el-input v-model="form.phone" placeholder="电话"></el-input>
                </el-form-item>
                <el-form-item label="邮箱" prop="email">
                <el-input v-model="form.email" placeholder="邮箱"></el-input>
                </el-form-item>
                <el-form-item label="生病类型" prop="ilk">
                <el-radio-group v-model="form.ilk">
                    <el-radio label="病毒性"></el-radio>
                    <el-radio label="细菌性"></el-radio>
                    <el-radio label="季节性"></el-radio>
                    <el-radio label="遗传性"></el-radio>
                    <el-radio label="罕见性"></el-radio>
                </el-radio-group>
                </el-form-item>
                <el-form-item label="内容" prop="content">
                    <div id="editor"></div>
                </el-form-item>
            </el-form>

            <div slot="footer" class="dialog-footer">
                <el-button @click="fromVisible = false">取 消</el-button>
                <el-button type="primary" @click="save">确 定</el-button>
            </div>
        </el-dialog>

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
import E from "wangeditor"
import hljs from 'highlight.js'

export default {
    name: "Inpantient",
    data() {
        return {
            tableData: [],  // 所有的数据
            pageNum: 1,   // 当前的页码
            pageSize: 5,  // 每页显示的个数
            name: '',
            total: 0,
            fromVisible: false,
            form: {},
            user: JSON.parse(localStorage.getItem('honey-user') || '{}'),
            rules: {
                name: [
                    { required: true, message: '请输入姓名', trigger: 'blur' },
                ],
                idcard: [
                    { required: true, message: '请输入身份证号', trigger: 'blur' },
                ]
            },
            ids: [],
            editor: null,
            content: '',
            fromVisible1 : false,
            sort: '',
            time: '',
            idcard: '',
            sex: '',
            age: '',
            ilk: '',
        }
    },
    created() {
        this.load()
    },
    methods: {
        delHtmlTag (str) {
            return str.replace(/<[^>]+>/g, '')
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
        closeDialog() {
            // 销毁编辑器
            this.editor.destroy()
            this.editor = null
        },
        delBatch() {
            if (!this.ids.length) {
                this.$message.warning('请选择数据')
                return
            }
            this.$confirm('您确认批量删除这些数据吗？', '确认删除', {type: "warning"}).then(response => {
                this.$request.delete('/inpantient/delete/batch', { data: this.ids }).then(res => {
                    if (res.code === '200') {   // 表示操作成功
                        this.$message.success('操作成功')
                        this.load(1)
                    } else {
                        this.$message.error(res.msg)  // 弹出错误的信息
                    }
                })
            }).catch(() => {})
        },
        handleSelectionChange(rows) {   // 当前选中的所有的行数据
            this.ids = rows.map(v => v.id)
        },
        del(id) {
            this.$confirm('您确认删除吗？', '确认删除', {type: "warning"}).then(response => {
                this.$request.delete('/inpantient/delete/' + id).then(res => {
                    if (res.code === '200') {   // 表示操作成功
                        this.$message.success('操作成功')
                        this.load(1)
                    } else {
                        this.$message.error(res.msg)  // 弹出错误的信息
                    }
                })
            }).catch(() => {})
        },
        setRichText() {
            this.$nextTick(() => {
                this.editor = new E(`#editor`)
                this.editor.highlight = hljs
                this.editor.config.uploadImgServer = this.$baseUrl + '/file/editor/upload'
                this.editor.config.uploadFileName = 'file'
                this.editor.config.uploadImgHeaders = {
                    token: this.user.token
                }
                this.editor.config.uploadImgParams = {
                    type: 'img',
                }
                this.editor.config.uploadVideoServer = this.$baseUrl + '/file/editor/upload'
                this.editor.config.uploadVideoName = 'file'
                this.editor.config.uploadVideoHeaders = {
                    token: this.user.token
                }
                this.editor.config.uploadVideoParams = {
                    type: 'video',
                }
                this.editor.create()  // 创建
            })
        },
        handleEdit(row){        //编辑数据
            this.form = JSON.parse(JSON.stringify(row))      //给form对象赋值  注意要深拷贝
            this.fromVisible = true    //打开弹窗
            this.setRichText()
            setTimeout(() =>{
                this.editor.txt.html(row.content)   //设置富文本内容
            },.0)
        },
        handleAdd(){             //新增数据
            this.form = {}   //新增数据时清空数据
            this.fromVisible = true    //打开弹窗
            this.setRichText()
        },
        save(){   //保存按钮触发的逻辑 他会触发新增或更新
            this.$refs.formRef.validate((valid)=>{
                if(valid){
                    // 获取编译框的内容
                    this.form.content = this.editor.txt.html()
                    this.$request({
                        url: this.form.id ? '/inpantient/update': '/inpantient/add',
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
                }
            })
        },
        reset() {
            this.name = ''
            this.idcard = ''
            this.load()
        },
        load(pageNum) {  // 分页查询
            if (pageNum)  this.pageNum = pageNum
            this.$request.get('/inpantient/selectByMoPage', {
                params: {
                    pageNum: this.pageNum,
                    pageSize: this.pageSize,
                    name: this.name,
                    idcard: this.idcard,
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