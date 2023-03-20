import { Router } from 'express';
import { urlSchema } from '../schemas/urlSchema.js'
import { validateSchema } from '../middlewares/validateSchema.middleware.js';
import  authvalidation  from '../middlewares/authValidation.js';
import { postShorten, getUrlById, getShort } from '../controllers/urls.controller.js';
const router = Router();

router.post('/urls/shorten', validateSchema(urlSchema), authvalidation, postShorten);
router.get('/urls/:id', getUrlById);
router.get('/urls/open/:shortUrl', getShort);
router.delete('/urls/:id', () =>{});

export default router;