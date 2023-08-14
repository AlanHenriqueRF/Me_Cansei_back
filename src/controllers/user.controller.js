import { db } from '../database/db.connection.js';
import bcrypt from 'bcrypt';


export async function signUP(req, res) {
    const {email, password,name, cellnumber,cpf} = req.body;

    try {
        const seachremail = (await db.query(`SELECT * FROM users WHERE email=$1`,[email]));

        if (seachremail.rowCount >0) return res.status(409).send('email ja cadastrado!');

        await db.query(`
            INSERT INTO users (email,password,name, cellnumber,cpf)
                VALUES ($1, $2, $3, $4,$5);
        `, [email, bcrypt.hashSync(password, 10),name, cellnumber,cpf])
        
        res.sendStatus(201);
    } catch (err) {
        res.status(500).send(err.message)
    }
}
