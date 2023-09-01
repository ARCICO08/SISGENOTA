import  express from "express";
import { pool } from './db.js'

const app = express()

app.get('/ping', async (req,res) => {
    const [result] = await pool.query('SELECT 1 + 1 AS result')
    res.json(result[0])
})





app.get('/employess', (req,res) => res.send('obteniendo estudiantes'))
app.post('/employess', (req,res) => res.send('creando estudiantes'))
app.put('/employess', (req,res) => res.send('actualizando estudiantes'))
app.delete('/employess', (req,res) => res.send('eliminando estudiantes'))


app.listen(3000)
console.log('servidor esperando en puerto', 3000);