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

export async function getUrlById (req, res) {
    const {id} = req.params

    try{
        const {
            rows: [urlExiste],
          } = await db.query(`SELECT * FROM shortens WHERE id = $1`, [id])

        if(!urlExiste) return res.status(404).send('Url não encontrada')

        
        return res.status(200).send({
            id: urlExiste.id,
        shortUrl: urlExiste.shortUrl,
    url: urlExiste.url})

    }catch(err){
        console.log(err)
        res.status(500).send('Erro: ' + err)

    }

}

