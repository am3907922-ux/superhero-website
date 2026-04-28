const express = require('express');
const router = express.Router();
const heroController = require('../controllers/heroController');

router.get('/', heroController.getHomePage);
router.get('/hetjur/ny', heroController.getAddHeroPage);
router.post('/hetjur/ny', heroController.createNewHero);
router.get('/hetjur/:id', heroController.getHeroDetails);

module.exports = router;