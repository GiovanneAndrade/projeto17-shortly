import { postSignupSchema } from "../schemas/signup.schema.js";
import * as allSignup from "../repositories/signup.repository.js";
async function postSignupMiddlewares(req, res, next) {
  let { name, email, password, confirmPassword } = req.body;
  if (password !== confirmPassword) {
    return res.sendStatus(422);
  }
  const consult = await allSignup.getConsultSignupRepository({ email });
  if (consult.rows.length > 0) return res.status(409).send("users existing");
  const validationUser = postSignupSchema.validate(
    { name, email, password, confirmPassword },
    { abortEarly: false }
  );

  if (validationUser.error) {
    const erro = validationUser.error.details.map((err) => err.message);
    return res.status(422).send(erro);
  }

  next();
}
export { postSignupMiddlewares };
