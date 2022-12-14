import  express  from "express";
import dotenv from 'dotenv';
import urlsRouter from './routers/urls.router.js'
const app = express();
app.use(express.json());
dotenv.config();


app.use(urlsRouter)

  
const port = process.env.PORT
app.listen(port, () => {
  console.log(`listening on port ${port} 👌`);
});