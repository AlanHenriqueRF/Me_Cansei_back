import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import router from "./routers/index.routes.js";

dotenv.config()

const app = express();
app.use(cors());
app.use(express.json());

app.use(router)

const PORT = 5000 || process.env.PORT;

app.listen(PORT,()=>{console.log(`Runnig in port number ${PORT}`)})