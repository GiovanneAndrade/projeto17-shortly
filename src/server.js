import  express  from "express";
import dotenv from 'dotenv';
import cors from 'cors';
import urlsRouter from './routers/urls.router.js'
import signupRouter from './routers/users.router.js'
import rankingRouter from './routers/ranking.router.js'
const app = express();
app.use(express.json());
dotenv.config();
app.use(cors());


app.use(urlsRouter)
app.use(signupRouter)
app.use(rankingRouter)

  
const port = process.env.PORT
app.listen(port, () => {
  console.log(`listening on port ${port} 👌`);
});