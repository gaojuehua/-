<template>
<div>
<!--    <div style="box-shadow: 0 0 10px rgba(0,0,0,.1); padding: 10px 20px; border-radius: 5px; margin-bottom: 10px">-->
<!--        您好,{{user.name}},祝你开心每一天！-->
<!--    </div>-->
<!--    <div style="display: flex ;margin:  15px 0">-->
<!--        <el-card style="width: 50%">-->
<!--            <h2 style="margin-bottom: 15px;font-size: 20px;font-weight: bold">系统公告</h2>-->
<!--            <el-timeline style="padding: 0">-->
<!--                <el-timeline-item v-for="item in notices" :key="item.id" :timestamp="item.time" placement="top">-->
<!--                    <el-card>-->
<!--                            <h4>{{ item.title }}</h4>-->
<!--                            <div style="white-space: break-spaces" class="text-wrapper">{{ item.content }}</div>-->
<!--                    </el-card>-->
<!--                </el-timeline-item>-->
<!--            </el-timeline>-->
<!--        </el-card>-->
<!--    </div>-->

    <div style="display: flex ;margin:  15px 0">
        <el-card style="width: 50%">
            <h2 style="margin-bottom: 15px;font-size: 20px;font-weight: bold">系统公告</h2>
            <el-collapse v-model="activeName" accordion>
                <el-collapse-item v-for="(item, index) in notices" :key="item.id" :name="index + ''">
                    <template slot="title">
                        <h4>{{item.title}}</h4>
                        <div style="flex: 1;width: 0;display: flex;align-items: center;justify-content: flex-end">
                            <h5>{{item.time}}</h5>
                        </div>
                    </template>
                    <div style="white-space: break-spaces" class="text-wrapper">{{ item.content }}</div>
<!--                    style="white-space: break-spaces"      该行可以使输入的换行数据显示-->
                </el-collapse-item>
            </el-collapse>
        </el-card>
    </div>

</div>
</template>

<script>
export default {
    name: "Home",
    data(){
        return {
            user: JSON.parse(localStorage.getItem('honey-user') || '{}'),
            notices: [],
            activeName: 0,
        }
    },created() {
        this.loadNotice()
    },
    methods:{
        loadNotice(){
            this.$request.get('/notice/selectUserData').then(res =>{
                this.notices = res.data
            })
        }
    }
}
</script>

<style scoped>

</style>