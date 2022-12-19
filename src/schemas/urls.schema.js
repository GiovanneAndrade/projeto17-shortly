
import Joi from 'joi';


const postUrlSchema = Joi.object({
  url : Joi.string().uri().required().min(1)
})

export { postUrlSchema }