const db = require('../lib/db');

async function getAllHeroes() {
  const result = await db.query(`
    SELECT id, name, universe, power, image_url, description
    FROM heroes
    ORDER BY id ASC
  `);

  return result.rows;
}

async function getHeroById(id) {
  const result = await db.query(
    `
      SELECT id, name, universe, power, image_url, description
      FROM heroes
      WHERE id = $1
    `,
    [id]
  );

  return result.rows[0];
}

async function createHero({ name, universe, power, image_url, description }) {
  const result = await db.query(
    `
      INSERT INTO heroes (name, universe, power, image_url, description)
      VALUES ($1, $2, $3, $4, $5)
      RETURNING id, name, universe, power, image_url, description
    `,
    [name, universe, power, image_url, description]
  );

  return result.rows[0];
}

module.exports = {
  getAllHeroes,
  getHeroById,
  createHero
};