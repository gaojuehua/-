import Vue from 'vue'
import VueRouter from 'vue-router'

// 解决导航栏或者底部导航tabBar中的vue-router在3.0版本以上频繁点击菜单报错的问题。
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push (location) {
  return originalPush.call(this, location).catch(err => err)
}

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Manager',
    component:()=>import('../views/Manager.vue'),
    redirect:'/home',     //重定向到主页
    children:[
      { path: '403', name: 'Auth', meta:{name:'无权限'}, component:()=>import('../views/manager/Auth.vue')},
      { path: 'home',name:'Home', meta:{name:'系统首页'}, component:() => import('../views/manager/Home.vue')},
      { path: 'user',name:'User', meta:{name:'用户信息'}, component:() => import('../views/manager/User.vue')},    //添加路由
      { path: 'person',name:'Person', meta:{name:'个人信息'}, component:() => import('../views/manager/Person.vue')},
      { path: 'password',name:'Password', meta:{name:'修改密码'}, component:() => import('../views/manager/Password.vue')},
      { path: 'news',name:'News', meta:{name:'新闻信息'}, component:() => import('../views/manager/News.vue')},
      { path: 'newsDetail',name:'NewsDetail', meta:{name:'新闻详情'}, component:() => import('../views/manager/NewsDetail.vue')},
      { path: 'notice',name:'Notice', meta:{name:'系统公告'}, component:() => import('../views/manager/Notice.vue')},
      { path: 'logs',name:'Logs', meta:{name:'系统日志'}, component:() => import('../views/manager/Logs.vue')},
      { path: 'charts',name:'Charts', meta:{name:'数据统计'}, component:() => import('../views/manager/Charts.vue')},
      { path: 'orders',name:'Orders', meta:{name:'订单管理'}, component:() => import('../views/manager/Orders.vue')},
      { path: 'inpantient',name:'Inpantient', meta:{name:'病历管理'}, component:() => import('../views/manager/Inpantient.vue')},
      { path: 'doctor',name:'Doctor', meta:{name:'医生信息'}, component:() => import('../views/manager/Doctor.vue')},
      { path: 'doctorSchedule',name:'DoctorSchedule', meta:{name:'医生排班'}, component:() => import('../views/manager/DoctorSchedule.vue')},
      { path: 'newsSchedule',name:'NewsSchedule', meta:{name:'新闻表'}, component:() => import('../views/manager/NewsSchedule.vue')},
      { path: 'doctorMessage',name:'DoctorMessage', meta:{name:'医生信息表'}, component:() => import('../views/manager/DoctorMessage.vue')},
      { path: 'inpantientText',name:'InpantientText', meta:{name:'病人病历查询表'}, component:() => import('../views/manager/InpantientText.vue')},
    ]
  },
  {path: '/login', name: 'Login',meta:{name:'登录'}, component:()=>import('../views/Login.vue')},
  {path: '/register', name: 'Register',meta:{name:'注册'}, component:()=>import('../views/Register.vue')},
  {path: '*', name: '404',meta:{name:'无法访问'}, component:()=>import('../views/404.vue')},

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

router.beforeEach((to,from,next)=>{
  // to 是到达的路由信息
  // from 是来源的路由信息
  // next 帮助我们跳转路由的函数
  let adminPath = ['/user']
  let user = JSON.parse(localStorage.getItem('honey-user') || '{}')
  if(user.role !== '管理员' && adminPath.includes(to.path)){
    //如果当前登录的用户不是管理员，然后当前的到达的路径是管理员才能到达的路径，那这个时候就要让用户去另一个页面
    next('/403')
  }else {
    next()
  }
})

export default router
