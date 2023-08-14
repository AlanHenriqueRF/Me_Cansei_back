import joi from 'joi';

export const cadastroschema = joi.object({
    email: joi.string().email().trim().required(),
    password: joi.string().trim().required(),
    name: joi.string().trim().required(),
    cellnumber: joi.string().trim().length(11).required(),
    cpf: joi.string().trim().length(11).required()
})