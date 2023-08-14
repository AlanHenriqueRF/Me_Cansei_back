import { Router } from "express";
import { allshoes, getbyid } from "../controllers/shoes.controller.js";


const shoesRouter = Router();

shoesRouter.get('/shoes' ,allshoes)
shoesRouter.get('/shoes/:id',getbyid)

export default shoesRouter