import { Router } from 'express';
import { validateSchema } from '../middlewares/validateSchema.middleware.js';
import {loginSchema} from '../schemas/loginSchema.js'
import {userSchema} from '../schemas/userSchema.js';


const router = Router();

router.post('/signup', validateSchema(loginSchema), ()=>{});
router.post('/signin', validateSchema(userSchema), ()=>{});
router.get('/users/me', () =>{});
router.get('/ranking', () =>{});

export default router;