import { nanoid } from 'nanoid'
import db from '../database/database.js'

export async function postShorten (req, res) {
    const { url } = req.body;
    const { user } = res.locals;
    const shortUrl = nanoid();
    try {
        const {
            rows: [{ id }],
          } = await db.query(`INSERT INTO shortens (url, "shortUrl", "userId") VALUES ($1, $2, $3) RETURNING id;`, [url, shortUrl, user.id]);
      
          return res.status(201).send({ id, shortUrl });
    }catch(err){
        console.log(err)
        res.status(500).send('Erro: ' + err)
    }

}


