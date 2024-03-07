<template>
<div>


</div>
</template>

<script>
export default {
    name: "Zhuye",
    data(){
        return {

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