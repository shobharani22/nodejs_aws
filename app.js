const Express=require('express');
const fs=require('fs');
let app=Express();
const courses=[
    {id:1,name:"course1"},
    {id:2,name:"course2"},
    {id:3,name:"course3"}
]
app.get('/',(req,res)=>{
    res.send("<h1>hello world</h1>");
})
app.get('/api/courses',(req,res)=>{
    res.send(courses);
})
app.get('/api/courses/:id',(req,res)=>{
    const course=courses.find(c=>c.id===parseInt(req.params.id));
    if(!course) res.status(404).send("the course with the given id was not found")
    res.send(course);
})
app.listen(3001,()=>{
    console.log("started on 3000 port")
})