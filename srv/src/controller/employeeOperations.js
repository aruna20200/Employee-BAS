const onBeforeEmployeeCreate = async (req) => {
    console.log("Before Event is triggered");
    const {DOB }=req.data;
    const iage = _getAge(DOB);
    if(iage>45){
        req.data.Age=iage;
    }
    else{
        req.error("Your age is under 45");
    }
    
}

const onAfterEmployeeCreate = async (req) => {
    console.log("After Event is triggered");
}
// 2nd April
const _getAge = (sDate)=>{
    const oToday = new Date();
    const bDate = new Date(sDate);
    const age = oToday.getFullYear()-bDate.getFullYear();
    return age;

}

module.exports = {
    onBeforeEmployeeCreate,
    onAfterEmployeeCreate
}