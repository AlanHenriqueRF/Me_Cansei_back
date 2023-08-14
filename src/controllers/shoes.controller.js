import { db } from '../database/db.connection.js';

export async function allshoes(req, res) {

    try {
        const lista = ((await db.query(`SELECT * FROM shoes WHERE "jaVendido"=$1`,[false])).rows);
        
        res.status(200).send(lista)
    } catch (err) {
        res.status(500).send(err.message)
    }
}

export async function getbyid(req,res){
    const {id} = req.params
    try{
        const produto = ((await db.query('SELECT shoes.*, users.cellnumber,users.email, users.name FROM shoes JOIN users ON users.id = shoes."userId" WHERE "userId"=$1',[id])).rows)[0]
        
        if (!produto) return res.sendStatus(404);
        
        res.send(produto)
    }catch(err){
        res.status(500).send(err.message)
    }
}
