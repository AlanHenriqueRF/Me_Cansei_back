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
        const produto = ((await db.query('SELECT shoes.*, users.cellnumber,users.email, users.name FROM shoes JOIN users ON users.id = shoes."userId" WHERE shoes.id=$1',[id])).rows)[0]
        
        if (!produto) return res.sendStatus(404);

        res.send(produto)
    }catch(err){
        res.status(500).send(err.message)
    }
}

export async function postshoe(req,res){
    const token = res.locals.token;
    const {color,size,price_cents,jaVendido,url_shoes,shoesname,descricao,marca} = req.body;
    const userId =  ((await db.query('SELECT "userId" FROM useronline WHERE token=$1',[token])).rows[0])

   
    try{
        await db.query(`INSERT INTO shoes 
        (color,size,price_cents,"jaVendido",url_shoes,shoesname,descricao,marca,"userId") 
        VALUES 
        ($1,$2,$3,$4,$5,$6,$7,$8,$9);`,[color,size,price_cents,false,url_shoes,shoesname,descricao,marca,userId.userId])

        res.sendStatus(201);
    }catch(err){
        res.status(500).send(err.message)
    }
}
