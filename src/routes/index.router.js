import { Router } from 'express';
import urlsRouter from './urls.router.js';
import usersRouter from './users.router.js';

const router = Router();

router.use(usersRouter);
router.use(urlsRouter);

export default router;
