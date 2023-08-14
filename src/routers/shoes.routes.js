import { Router } from "express";
import { allshoes, getbyid, postshoe } from "../controllers/shoes.controller.js";
import validateSchema from "../middlewares/validatSchemas.js";
import { shoesSchema } from "../schemas/shoe.schema.js";
import { autorization } from "../middlewares/authorization.js";


const shoesRouter = Router();

shoesRouter.get('/shoes' ,allshoes)
shoesRouter.get('/shoes/:id',getbyid)
shoesRouter.post('/shoes/new',validateSchema(shoesSchema),autorization,postshoe)


export default shoesRouter