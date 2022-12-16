import bcrypt from "bcrypt";
import * as allSignup from "../repositories/signup.repository.js";

async function postSignupController(req, res) {
  let { name, email, password } = req.body;
  name = name.trim().replace(/( )+/g, " ");
  let novoEmail = email.replace(/[^a-z0-9]/gi, "");
  let novoPassword = password.replace(/[^a-z0-9]/gi, "");
  
  if (
    email !== novoEmail ||
    password !== novoPassword
  ) {
    return res.sendStatus(404);
  }
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
