import bcrypt from "bcrypt";
import * as allSignup from "../repositories/signup.repository.js";

async function postSignupController(req, res) {
  let { name, email, password } = req.body;

  name = name.trim().replace(/( )+/g, " ");
  password = bcrypt.hashSync(req.body.password, 10);

  try {
    const result = await allSignup.postSignupRepository({
      name,
      email,
      password,
    });
    return res.sendStatus(200);
  } catch (error) {
    return res.sendStatus(500).send(error);
  }
}

export { postSignupController };
