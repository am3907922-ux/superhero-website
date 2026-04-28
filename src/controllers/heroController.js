const heroService = require('../services/heroService');

async function getHomePage(req, res) {
  try {
    const heroes = await heroService.getAllHeroes();

    res.render('index', {
      title: 'Superhero Website',
      heroes: heroes
    });
  } catch (error) {
    console.error(error);
    res.status(500).send('An error occurred while fetching heroes');
  }
}

async function getHeroDetails(req, res) {
  try {
    const id = req.params.id;
    const hero = await heroService.getHeroById(id);

    if (!hero) {
      return res.status(404).send('Hero not found');
    }

    res.render('hero-details', {
      title: hero.name,
      hero: hero
    });
  } catch (error) {
    console.error(error);
    res.status(500).send('An error occurred while fetching the hero');
  }
}

function getAddHeroPage(req, res) {
  res.render('add-hero', {
    title: 'Add a new hero'
  });
}

async function createNewHero(req, res) {
  try {
    const { name, universe, power, image_url, description } = req.body;

    if (!name || !universe || !power || !description) {
      return res.status(400).send('Missing information in the form');
    }

    const newHero = await heroService.createHero({
      name,
      universe,
      power,
      image_url,
      description
    });

    res.redirect(`/hetjur/${newHero.id}`);
  } catch (error) {
    console.error(error);
    res.status(500).send('An error occurred while saving the hero');
  }
}

module.exports = {
  getHomePage,
  getHeroDetails,
  getAddHeroPage,
  createNewHero
};