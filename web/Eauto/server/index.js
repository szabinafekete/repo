const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const configDb = require('./configDb');

const db = mysql.createConnection(configDb)

const app = express()
app.use(cors())
app.use(express.json())

app.get('/eladas', (req, resp)=>{
    const sql = "select ev, elektromos, hagyomanyos, round(elektromos/hagyomanyos*100,2) as novekedes from eu_world order by ev"
    db.query(sql, (err, result)=>{
        if(err) console.log(err)
        if(result) resp.status(200).send(result)
    })
})

app.get('/toplista', (req, resp)=>{
    const sql = "select id, nev from etipusok order by nev"
    db.query(sql, (err, result)=>{
        if(err) console.log(err)
        if(result) resp.status(200).send(result)
    })
})

app.get('/toplista/:id', (req, resp)=>{
    const {id} = req.params
    const sql = `select a.mennyiseg, b.nev from eu_eladas_data a, etipusok b where a.etipusID = b.id and b.id ='${id}'`
    db.query(sql, (err, result)=>{
        if(err) console.log(err)
        if(result) resp.status(200).send(result)
    })
})


app.listen(5000, ()=> console.log('listening on port 5000...'))