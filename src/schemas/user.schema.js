import joi from 'joi';

export const loginschema = joi.object({
    email: joi.string().email().trim().required(),
    password: joi.string().trim().required()
})