import bcrypt from "bcrypt"
import { db } from "../database/db.connection.js";

export default async function validateLogin(req,res,next){
    const {email, password} = req.body;

    const response =  await db.query(`SELECT * FROM users WHERE email = $1`,[email])
    if (response.rowCount === 0 ) return res.sendStatus(404);
    if (!(bcrypt.compareSync(password, response.rows[0].password))) return res.sendStatus(401)

    next();
}