import { Router } from 'express';
import { validateSchema } from '../middlewares/validateSchema.middleware.js';
import {loginSchema} from '../schemas/loginSchema.js'
import {userSchema} from '../schemas/userSchema.js';
import  {signin, signup}  from '../controllers/user.controller.js';

const router = Router();

router.post('/signup', validateSchema(userSchema),signup);
router.post('/signin', validateSchema(loginSchema), signin);
router.get('/users/me', () =>{});
router.get('/ranking', () =>{});

export default router;