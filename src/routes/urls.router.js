import { Router } from 'express';
import { urlSchema } from '../schemas/urlSchema.js'
import { validateSchema } from '../middlewares/validateSchema.middleware.js';

const router = Router();

router.post('/urls/shorten', validateSchema(urlSchema), () =>{});
router.get('/urls/:id', () =>{});
router.get('/urls/open/:shortUrl', () =>{});
router.delete('/urls/:id', () =>{});

export default router;