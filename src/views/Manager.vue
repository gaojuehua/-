<template>
  <div>
      <el-container>
          <!--侧边栏-->
          <el-aside :width="asideWidth" style="min-height: 100vh; background-color:#001529"><!--100vh相当于窗口当前高度-->
            <div style="height: 60px;line-height: 60px;color: aqua;display: flex;align-items: center;justify-content: center">
                <img src="@/assets/logo1.jpg" style="width: 40px;height: 40px">
                <span class="logo-title" v-show="!isCollapse">毕业设计</span>
            </div>

              <el-menu :default-openeds="['info','info1','info2']" :collapse="isCollapse" :collapse-transition="false" router background-color="#001529" text-color="rgba(255,255,255,0.65)"
                       active-text-color="#fff" style="border: none " :default-active="$route.path"><!--$route.path当前浏览访问的路由;router点击;collapse水平折叠菜单;collapse-transition收缩栏动画-->
<!--                  :default-openeds="['info','info1','info2']"     添加该行会在打开时自动打开导航栏-->
                  <el-menu-item index="/home">
                      <template>
                          <i class="el-icon-s-home"></i>
                          <span slot="title">系统首页</span>
                      </template>
                  </el-menu-item>

                  <el-submenu index="info" >
                      <template slot="title">
                          <i class="el-icon-menu"></i>
                          <span>信息管理</span>
                      </template>
<!--                      <el-menu-item index="/news" v-if="user.role === '管理员'">新闻信息</el-menu-item>-->
<!--                      <el-menu-item index="/person" v-if="user.role === '医生' || '其他人员'">个人信息</el-menu-item>-->
<!--                      <el-menu-item index="/orders">病历管理</el-menu-item>-->
                      <el-menu-item index="/newsSchedule">新闻页</el-menu-item>
                      <el-menu-item index="/doctorMessage">医生信息</el-menu-item>
                      <el-menu-item index="/doctorSchedule">医生排班</el-menu-item>
                  </el-submenu>

                  <el-submenu index="info1">
                      <template slot="title">
                          <i class="el-icon-menu"></i>
                          <span>用户管理</span>
                      </template>
                         <el-menu-item index="/user" v-if="user.role === '管理员'">用户信息</el-menu-item>
                         <el-menu-item index="/inpantient" v-if="user.role === '医生'">病人病历</el-menu-item>
                         <el-menu-item index="/inpantientText">病人病历查询表</el-menu-item>
<!--                         <el-menu-item index="/person">个人信息</el-menu-item>-->
                  </el-submenu>

                  <el-submenu index="info2" v-if="user.role === '管理员'">
                      <template slot="title">
                          <i class="el-icon-menu"></i>
                          <span>系统管理</span>
                      </template>
                      <el-menu-item index="/logs" v-if="user.role === '管理员'">系统日志</el-menu-item>
                      <el-menu-item index="/charts" v-if="user.role === '管理员'">数据统计</el-menu-item>
                      <el-menu-item index="/doctor" v-if="user.role === '管理员'">医生信息表</el-menu-item>
                      <el-menu-item index="/news" v-if="user.role === '管理员'">新闻信息</el-menu-item>
                      <el-menu-item index="/notice" v-if="user.role === '管理员'">系统公告</el-menu-item>
                  </el-submenu>

                  <el-menu-item index="/person">
                      <template slot="title">
                          <i class="el-icon-gerenxinxi"></i>
                          <span>个人信息</span>
                      </template>
                  </el-menu-item>

                  <el-menu-item index="/">
                      <template slot="title">
                          <i class="el-icon-fanhui7"></i>
                          <span>返回首页</span>
                      </template>
                  </el-menu-item>

              </el-menu>
          </el-aside>


          <el-container>
              <!--头部区域-->
              <el-header>
                  <i :class="collapseIcon" style="font-size: 40px" @click="handCollapse"></i>
                  <el-breadcrumb separator-class="el-icon-arrow-right" style="margin-left: 20px">
                      <el-breadcrumb-item :to="{ path: '/' }">主页</el-breadcrumb-item>
                          <el-breadcrumb-item :to="{ path: $router.path }">{{ $route.meta.name }}</el-breadcrumb-item>
                  </el-breadcrumb>

                  <div style="flex: 1;width: 0;display: flex;align-items: center;justify-content: flex-end"><!--justify-content靠右-->
                      <i class="el-icon-quanping" style="font-size: 26px" @click="handleFull"></i>
                      <el-dropdown placement="bottom">
                          <div style="display: flex;align-items: center;cursor: default"><!--cursor鼠标放上是箭头-->
                              <img :src="user.avatar || 'https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png'" style="width: 40px;height: 40px;border-radius:50% ;margin: 0 5px">
                              <span>{{ user.name }}</span>
                          </div>
                          <el-dropdown-menu slot="dropdown">
                              <el-dropdown-item @click.native="$router.push('/person')">个人信息</el-dropdown-item>
                              <el-dropdown-item @click.native="$router.push('/password')">修改密码</el-dropdown-item>
                              <el-dropdown-item @click.native="logout">退出登录</el-dropdown-item>
                          </el-dropdown-menu>
                      </el-dropdown>
                  </div>

              </el-header>
              <!--主体-->

              <el-main>
                  <router-view @update:user="updateUser" />
              </el-main>

          </el-container>
      </el-container>
  </div>
</template>

<script>

import request from "@/untils/request";

export default {
    name: 'HomeView',
    data() {
        return {
            isCollapse: false,    //是否收缩收缩
            asideWidth: '200px',   //侧边栏的width不收缩时默认为200px
            collapseIcon: 'el-icon-s-fold',
            users: [],
            user: JSON.parse(localStorage.getItem('honey-user') || '{}'),
            url: '',
            urls: [],
        }
    },
    mounted() {   //页面加载完成之后触发
        if(!this.user.id){     //当前的浏览器没有用户信息
            this.$router.push('/login')
        }
    },
    methods: {
        updateUser(user){    //获取子组件传过来的数据 更新当前页面的数据
            this.user = JSON.parse(JSON.stringify(user))   //让父级的对象跟子集的对象无关联(深度拷贝)
        },
        preview(url){
            window.open(url)
        },
        ShowUrls(){
            console.log(this.urls)
        },
        handleMultipleFileUpload(row,file,fileList){
            this.urls = fileList.map(v => v.response?.data)
        },
        handleTableFileUpload(row,file,fileList){
            console.log(row,file,fileList)
            row.avatar = file.response.data
            // this.$set(row,'avatar',file.response.data)
            console.log(row)
            //触发更新
            request.put('/user/update', row).then(res=>{
                if(res.code === '200'){
                    this.$message.success('上传成功')
                }else {
                    this.$message.error(res.msg)
                }
            })
        },
        handleFileUpload(response,file,fileList){
            this.fileList = fileList
        },
        logout(){
            localStorage.removeItem('honey-user')    // 清除当前token和用户的数据
            this.$router.push('/login')
        },
        handleFull(){
            document.documentElement.requestFullscreen()
        },
        handCollapse() {
            this.isCollapse = !this.isCollapse
            this.asideWidth = this.isCollapse ? '64px' : '200px'   //收缩时为64px;展开时为200px
            this.collapseIcon = !this.isCollapse ? 'el-icon-s-unfold' : 'el-icon-s-fold'
        }
    }
}
</script>
<style>
.el-menu--inline{
    background-color: #000c17 !important;

}
.el-menu--inline .el-menu-item{
    background-color: #000c17 !important;
    padding-left: 49px !important;
}
.el-menu-item:hover,.el-submenu__title:hover{
    color:#fff !important;
}
.el-submenu__title:hover i {
    color:#fff !important;
}
.el-menu-item.is-active{
    background-color: #1890ff !important;
    border-radius: 10px !important;
}
.el-menu-item.is-active i,.el-menu-item.is-active .el-tooltip{
    margin-left: 0px;
}
.el-menu-item{
    height: 40px !important;
    line-height: 40px !important;
}
.el-submenu__title{
    height: 40px !important;
    line-height: 40px !important;
    margin: 4px !important;
}


<!--设置二级管理的小v-->
.el-submenu__icon-arrow {
    margin-top: -5px;
}
.el-aside{
    transition: width .3s;
    box-shadow: 2px 0 6px rgba(0,21,41,35);    /*侧边栏添加阴影*/
    }
.logo-title{
    margin: 5px;
    font-size: 15px;
    transition: all .3s;    /*.3s是0.3的意思 */
}
.el-header{
    box-shadow: 2px 0 6px rgba(0,21,41,35);
    display: flex;
    align-items: center;
}
</style>