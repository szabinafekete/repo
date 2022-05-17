const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const configDb = require('./configDb')

const db = mysql.createConnection(configDb);
const app = express();

app.use(express.json());
app.use(cors());

app.get('/pizzak', (req, res)=>{
    db.query('select nev, foto from pizza group by nev', (err, result)=>{
        if(err)
            console.log(err)
        else
            res.status(200).send(result)
    })
})

app.get('/pizzak/:nev', (req, res)=>{
    const {nev} = req.params
    db.query('select meret, ar from pizza where nev=?', [nev], (err, result)=>{
        if(err)
            console.log(err)
        else
            res.status(200).send(result)
    })
})

app.listen(5000, () => console.log('server listening on port 5000...'))