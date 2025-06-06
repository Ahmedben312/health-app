import { Router } from "express";
const router = Router();

router.get("/", (req, res) => {
  res.json({ message: "Queue route works!" });
});

export default router;
