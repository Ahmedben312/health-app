import { Router } from "express";
const router = Router();

router.get("/", (req, res) => {
  res.json({ message: "Doctors route works!" });
});

export default router;
