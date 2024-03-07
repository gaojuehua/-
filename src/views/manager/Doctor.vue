<template>
    <div>
        <div>
            <el-input style="width: 200px" placeholder="查询用户" v-model="name"></el-input>
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
            <el-table-column label="头像">
                <template v-slot="scope">
                    <div style="display: flex;align-items: center">
                        <el-image style="width: 50px;height: 50px;border-radius: 50%" v-if="scope.row.avatar" :src="scope.row.avatar" :preview-src-list="[scope.row.avatar]"></el-image>
                    </div>
                </template>
            </el-table-column>
            <el-table-column prop="username" label="用户名"></el-table-column>
            <el-table-column prop="name" label="姓名"></el-table-column>
            <el-table-column prop="description" label="简介" show-overflow-tooltip></el-table-column>
            <el-table-column prop="phone" label="电话"></el-table-column>
            <el-table-column prop="email" label="邮箱"></el-table-column>
            <el-table-column prop="sort" label="科室"></el-table-column>
            <el-table-column prop="schedule" label="排班"></el-table-column>
            <el-table-column prop="time" label="入职时间"></el-table-column>
            <el-table-column prop="post" label="职位"></el-table-column>
            <el-table-column prop="user" label="发布人"></el-table-column>
            <el-table-column prop="states" label="状态"></el-table-column>
            <el-table-column label="是否公开">
                <template v-slot="scope">
                    <el-switch v-model="scope.row.open" @change="changeOpen(scope.row)"></el-switch>
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

        <el-dialog title="医生信息" :visible.sync="fromVisible" width="50%" @close="closeDialog" :close-on-click-modal="false">
            <el-form :model="form" label-width="80px" style="padding-right: 20px" :rules="rules" ref="formRef">
                <el-form-item label="用户名" prop="username">
                    <el-input v-model="form.username" placeholder="用户名"></el-input>
                </el-form-item>
                <el-form-item label="姓名" prop="name">
                    <el-input v-model="form.name" placeholder="姓名"></el-input>
                </el-form-item>
                <el-form-item label="电话" prop="phone">
                    <el-input v-model="form.phone" placeholder="电话"></el-input>
                </el-form-item>
                <el-form-item label="邮箱" prop="email">
                <el-input v-model="form.email" placeholder="邮箱"></el-input>
                </el-form-item>
                <el-form-item label="科室" prop="sort">
                    <el-radio-group v-model="form.sort">
                        <el-radio label="内科"></el-radio>
                        <el-radio label="外科"></el-radio>
                        <el-radio label="牙科"></el-radio>
                        <el-radio label="耳鼻喉科"></el-radio>
                        <el-radio label="儿科"></el-radio>
                        <el-radio label="肛肠科"></el-radio>
                        <el-radio label="眼科"></el-radio>
                    </el-radio-group>
                </el-form-item>
                <el-form-item label="排班" prop="schedule">
                    <el-radio-group v-model="form.schedule">
                        <el-radio label="周一"></el-radio>
                        <el-radio label="周二"></el-radio>
                        <el-radio label="周三"></el-radio>
                        <el-radio label="周四"></el-radio>
                        <el-radio label="周五"></el-radio>
                        <el-radio label="周六"></el-radio>
                        <el-radio label="周日"></el-radio>
                    </el-radio-group>
                </el-form-item>
                <el-form-item label="职位" prop="post">
                    <el-radio-group v-model="form.post">
                        <el-radio label="主任医师"></el-radio>
                        <el-radio label="副主任医师"></el-radio>
                    </el-radio-group>
                </el-form-item>
                <el-form-item label="状态" prop="states">
                    <el-radio-group v-model="form.states">
                        <el-radio label="在职"></el-radio>
                        <el-radio label="请假"></el-radio>
                        <el-radio label="离职"></el-radio>
                    </el-radio-group>
                </el-form-item>
                <el-form-item label="简介" prop="description">
                    <div id="editor"></div>
                </el-form-item>
                <el-form-item label="头像">
                    <el-upload
                        class="avatar-uploader"
                        :action="$baseUrl + '/file/upload'"
                        :headers="{ token: user.token }"
                        :file-list="fileList"
                        list-type="picture"
                        :on-success="handleAvatarSuccess"
                    >
                        <el-button type="primary">上传头像</el-button>
                    </el-upload>
                </el-form-item>
            </el-form>

            <div slot="footer" class="dialog-footer">
                <el-button @click="down();fromVisible = false">取 消</el-button>
                <el-button type="primary" @click="save">确 定</el-button>
            </div>
        </el-dialog>

        <el-dialog title="简介" :visible.sync="fromVisible1" width="60%">
            <el-card class="w-e-text">
                <div v-html="content"></div>
            </el-card>
        </el-dialog>
    </div>
</template>

<script>
import E from "wangeditor"
import hljs from 'highlight.js'

export default {
    name: "Doctor",
    data() {
        return {
            fileList: [],
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
                ]
            },
            ids: [],
            editor: null,
            content: '',
            fromVisible1 : false,
        }
    },
    created() {
        this.load()
    },
    methods: {
        down(){
            this.fileList = []
        },
        sendSavaRequest(){
            this.$request({
                url: this.form.id ? '/doctor/update': '/doctor/add',
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
        changeOpen(form){
            // 调用更新的接口  跟新数据到数据库
            this.form = JSON.parse(JSON.stringify(form))    // 深拷贝数据
            this.sendSavaRequest()     //直接发请求
        },
        showContent(content){
            this.content = content
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
                this.$request.delete('/doctor/delete/batch', { data: this.ids }).then(res => {
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
                this.$request.delete('/doctor/delete/' + id).then(res => {
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
                    this.sendSavaRequest()
                }
            })
        },
        reset() {
            this.name = ''
            this.load()
        },
        load(pageNum) {  // 分页查询
            if (pageNum)  this.pageNum = pageNum
            this.$request.get('/doctor/selectByMoPage', {
                params: {
                    pageNum: this.pageNum,
                    pageSize: this.pageSize,
                    name: this.name
                }
            }).then(res => {
                this.tableData = res.data.records
                this.total = res.data.total
            })
        },
        handleCurrentChange(pageNum) {
            this.load(pageNum)
        },
        handleAvatarSuccess(response,file,fileList){
            //把user的头像属性换成上传的图片链接
            this.form.avatar = response.data
            this.fileList = fileList
        },
    }
}
</script>

<style scoped>

</style>