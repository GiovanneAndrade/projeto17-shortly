import * as allSignup from "../repositories/signup.repository.js";
import bcrypt from "bcrypt";

async function postSigninMiddlewares(req, res, next) {
  let { email, password } = req.body;
  const consultUser = await allSignup.getConsultSignupRepository({ email });

  if (
    consultUser.rows.length === 0 ||
    !bcrypt.compareSync(password, consultUser.rows[0].password)
  ) {
    return res.sendStatus(401);
  }

  next();
}
export { postSigninMiddlewares };
