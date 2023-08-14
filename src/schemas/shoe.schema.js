import joi from 'joi';

export const shoesSchema = joi.object({
    color: joi.string().trim().required(),
    size: joi.string().trim().required(),
    price_cents: joi.number().min(1).required(),
    jaVendido: joi.bool().required(),
    url_shoes: joi.string().uri().trim().required(),
    shoesname: joi.string().trim().required()
})