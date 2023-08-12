import { Router } from "express";
import validateSchema from "../middlewares/validatSchemas.js";
import { loginschema } from "../schemas/user.schema.js";
import validateLogin from "../middlewares/validateLogin.js";
import { signIN } from "../controllers/sigin.controller.js";


const signinRouter = Router();

signinRouter.post('/Signin', validateSchema(loginschema), validateLogin,signIN)

export default signinRouter