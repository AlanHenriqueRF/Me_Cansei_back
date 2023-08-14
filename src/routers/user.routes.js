import { Router } from "express";
import validateSchema from "../middlewares/validatSchemas.js";
import { cadastroschema } from "../schemas/useonline.schema.js";
import { signUP } from "../controllers/user.controller.js";


const userRouter = Router();

userRouter.post('/SignUp', validateSchema(cadastroschema),signUP)

export default userRouter