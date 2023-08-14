import { Router } from "express";
import { allshoes } from "../controllers/shoes.controller.js";


const shoesRouter = Router();

shoesRouter.get('/shoes' ,allshoes)

export default shoesRouter