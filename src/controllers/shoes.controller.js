import { db } from '../database/db.connection.js';

export async function allshoes(req, res) {

    try {
        const lista = ((await db.query(`SELECT * FROM shoes WHERE "jaVendido"=$1`,[false])).rows);
        console.log(lista)
        
        res.status(200).send(lista)
    } catch (err) {
        res.status(500).send(err.message)
    }
}
