
import { v4 as uuid } from 'uuid';
import { db } from '../database/db.connection.js';

export async function signIN(req, res) {
    const {email, password} = req.body;

    try {
        const userId = ((await db.query(`SELECT * FROM users WHERE email=$1`,[email])).rows)[0].id;
        const token = uuid();
        await db.query(`
            INSERT INTO useronline (token,"userId")
                VALUES ($1, $2);
        `, [token,userId])
        
        res.status(200).send({token})
    } catch (err) {
        res.status(500).send(err.message)
    }
}
