
import Joi from 'joi';


const postUrlSchema = Joi.object({
  url : Joi.string().uri().required().min(1)
})
const getUrlsOpenSchema = Joi.object({
  shortUrl : Joi.string().required().min(1).trim()
})
export { postUrlSchema, getUrlsOpenSchema }