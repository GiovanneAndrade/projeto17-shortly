import Joi from "joi";

const postSignupSchema = Joi.object({
  name: Joi.string().required().min(1).trim(),
  email: Joi.string().required().min(1).trim(),
  password: Joi.string().required().min(1).trim(),
  confirmPassword: Joi.string().required().min(1).trim(),
});

export { postSignupSchema };
