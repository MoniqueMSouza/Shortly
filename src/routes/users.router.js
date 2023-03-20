import { Router } from 'express';
import { validateSchema } from '../middlewares/validateSchema.middleware.js';
import { loginSchema } from '../schemas/loginSchema.js'
import { userSchema } from '../schemas/userSchema.js';
import { getUser, getRanking, signin, signup } from '../controllers/user.controller.js';
import authValidation from '../middlewares/authValidation.js'

const router = Router();

router.post('/signup', validateSchema(userSchema), signup);
router.post('/signin', validateSchema(loginSchema), signin);
router.get('/users/me', authValidation, getUser);
router.get('/ranking', getRanking);

export default router;