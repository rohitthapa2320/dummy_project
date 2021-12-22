const express = require('express');

const app=express();

const PORT=3000;

app.get('/close', (req,res) => {
    res.send("Exited !!!");
    process.exit();
})

app.get("/", (req,res) => {
    let response="Hello World";
    if(req.query.echop)
        response=`${response} Param= ${req.query.echop}`;

    res.send(response);

});


app.listen(PORT, () => {
    console.log(`Connected to PORT ${PORT}`);
});