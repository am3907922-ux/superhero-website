CREATE TABLE IF NOT EXISTS heroes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  universe VARCHAR(50) NOT NULL,
  power TEXT NOT NULL,
  image_url TEXT,
  description TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO heroes (name, universe, power, image_url, description)
VALUES
(
  'Superman',
  'DC',
  'Super strength, flight and laser vision',
  '/images/superman.png',
  'Superman protects the earth with great power and a strong moral compass.'
),
(
  'Captain America',
  'Marvel',
  'Super strength, shield and leadership',
  '/images/captain_america.png',
  'Captain America is a symbol of justice who fights for freedom and truth.'
),
(
  'Thor',
  'Marvel',
  'Thunder, super strength and the hammer Mjolnir',
  '/images/thor.png',
  'Thor is a Norse god who protects both Asgard and Earth.'
),
(
  'Archangel',
  'Marvel',
  'Wings, flight and super speed',
  '/images/archangel.png',
  'Archangel is a mutant with wings and exceptional combat skills.'
),
(
  'Hulk',
  'Marvel',
  'Enormous strength and regeneration',
  '/images/hulk.png',
  'Hulk gets stronger the angrier he becomes.'
),
(
  'Flash',
  'DC',
  'Super speed and time travel',
  '/images/flash.png',
  'Flash is the fastest hero in the world and can travel through time.'
),
(
  'Aquaman',
  'DC',
  'Control over the sea and communication with sea creatures',
  '/images/aquaman.png',
  'Aquaman protects the ocean and rules over Atlantis.'
),
(
  'Black Panther',
  'Marvel',
  'Speed, strength and vibranium suit',
  '/images/blackpanther.png',
  'Black Panther protects Wakanda with technology and combat skills.'
),
(
  'Doctor Strange',
  'Marvel',
  'Magic and control over time and dimensions',
  '/images/drstrange.png',
  'Doctor Strange protects the world against supernatural threats.'
),
(
  'Green Lantern',
  'DC',
  'Power ring that can create anything',
  '/images/green_lantern.png',
  'Green Lantern uses his willpower to create and fight.'
),
(
  'Scarlet Witch',
  'Marvel',
  'Magic and control over reality',
  '/images/scarletwitch.png',
  'Scarlet Witch can alter reality with immense power.'
),
(
  'Spiderman',
  'Marvel',
  'Wall-crawling, spider-sense and agility',
  '/images/spiderman.png',
  'Spiderman protects New York and uses his powers to fight evil.'
),
(
  'Catwoman',
  'DC',
  'Agility, theft and combat skills',
  '/images/catwoman.png',
  'Catwoman is a skilled thief who often operates on the line between good and evil.'
),
(
  'Mister Fantastic',
  'Marvel',
  'Elastic body and genius intellect',
  '/images/mrfantastic.png',
  'Mister Fantastic can stretch his body and is one of the smartest men in the world.'
),
(
  'Wolverine',
  'Marvel',
  'Adamantium claws and rapid healing',
  '/images/wolverine.png',
  'Wolverine is a mutant with incredible regeneration and razor sharp claws.'
),
(
  'Invisible Woman',
  'Marvel',
  'Invisibility and force fields',
  '/images/invisiblewoman.png',
  'Invisible Woman can become invisible and create protective force fields.'
),
(
  'Human Torch',
  'Marvel',
  'Fire and flight',
  '/images/human_torch.png',
  'Human Torch can ignite himself and fly at great speed.'
),
(
  'The Thing',
  'Marvel',
  'Enormous strength and rock-hard skin',
  '/images/thing.png',
  'The Thing has a stone-like body and incredible strength.'
),
(
  'Magneto',
  'Marvel',
  'Control over magnetic fields and metals',
  '/images/magneto.png',
  'Magneto is a powerful mutant who can control all metals and magnetic fields.'
),
(
  'Hawkeye',
  'Marvel',
  'Perfect marksmanship and combat skills',
  '/images/hawkeye.png',
  'Hawkeye is the best archer in the world and a key member of the Avengers.'
),
(
  'Gambit',
  'Marvel',
  'Charges objects with explosive energy and card tricks',
  '/images/gambit.png',
  'Gambit is a skilled mutant who uses playing cards as explosive weapons.'
),
(
  'Nick Fury',
  'Marvel',
  'Military training, leadership and intelligence',
  '/images/nick_fury.png',
  'Nick Fury leads S.H.I.E.L.D. and assembles the Avengers team.'
),
(
  'Ant-Man',
  'Marvel',
  'Can shrink and grow his body',
  '/images/antman.png',
  'Ant-Man uses special equipment to change his size and communicate with insects.'
),
(
  'Lex Luthor',
  'DC',
  'Genius intellect, wealth and technology',
  '/images/lexluther.png',
  'Lex Luthor is one of the smartest men in the DC universe and Superman''s greatest enemy.'
),
(
  'Vision',
  'Marvel',
  'Flight, super strength and mind stone energy',
  '/images/vision.png',
  'Vision is an android with emotions who can phase through solid objects.'
),
(
  'Daredevil',
  'Marvel',
  'Echolocation, speed and combat skills',
  '/images/daredevil.png',
  'Daredevil is a blind lawyer by day and the hero of New York by night.'
),
(
  'Batman',
  'DC',
  'Genius intellect, military training and technology',
  '/images/batman.png',
  'Batman protects Gotham City with the power of his mind and cutting edge technology.'
),
(
  'Iron Man',
  'Marvel',
  'Armor, flight and high-tech weapons',
  '/images/ironman.png',
  'Iron Man is a brilliant inventor who uses a high-tech suit of armor to protect the world.'
),
(
  'Wonder Woman',
  'DC',
  'Super strength, speed and lasso',
  '/images/wonderwoman.png',
  'Wonder Woman is an Amazon princess who protects the world with strength, speed and justice.'
),
(
  'Dr. Doom',
  'Marvel',
  'Genius intellect, sorcery and iron armor',
  '/images/drdoom.png',
  'Dr. Doom is the ruthless ruler of Latveria who combines science and magic to conquer the world.'
),
(
  'Deadpool',
  'Marvel',
  'Rapid healing, combat skills and dual katanas',
  '/images/deadpool.png',
  'Deadpool is a wise-cracking mercenary with an incredible healing factor who knows he is in a comic book.'
),
(
  'Silver Surfer',
  'Marvel',
  'Silver Surfer has the Power Cosmic, letting him control energy, fly faster than light, and alter matter.',
  '/images/silversurfer.png',
  'Silver Surfer is a cosmic, surfboard-riding herald of Galactus with immense power.'
),
(
  'Thanos',
  'Marvel',
  'Thanos has super strength, durability, and advanced intelligence, often enhanced by cosmic energy and the Infinity Gauntlet.',
  '/images/thanos.png',
  'Thanos is a powerful warlord obsessed with balance, known for his strength, intellect, and quest for ultimate control over the universe.'
),
(
  'Venom',
  'Marvel',
  'Venom has super strength, shape-shifting, web-like abilities, and rapid healing from an alien symbiote.',
  '/images/venom.png',
  'Venom is a dark antihero, a human bonded with an alien symbiote that gives him immense power and a monstrous appearance.'
),
(
  'Spiderman Symbiote',
  'Marvel',
  'The Spider-Man Symbiote Suit boosts Spider-Man with greater strength, faster healing, shape-shifting, and organic webbing.',
  '/images/spidersymbiote.png',
  'The Spider-Man Symbiote Suit is a living alien suit that bonds with Spider-Man, boosting his powers while gradually influencing his behavior.'
),
(
  'Black Widow',
  'Marvel',
  'Expert spy, combat skills and gadgets',
  '/images/black_widow.png',
  'Black Widow is a highly trained spy and assassin who is a key member of the Avengers.'
);