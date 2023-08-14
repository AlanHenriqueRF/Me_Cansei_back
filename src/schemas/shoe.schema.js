import joi from 'joi';

export const shoesSchema = joi.object({
    color: joi.string().trim().required(),
    size: joi.string().trim().required(),
    price_cents: joi.number().min(1).required(),
    jaVendido: joi.bool().default(false),
    url_shoes: joi.string().uri().trim().required(),
    shoesname: joi.string().trim().required(),
    descricao:  joi.string().trim().required(),
    marca: joi.string().trim().required(),
    headers: joi.object()
})