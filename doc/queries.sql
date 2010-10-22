-- List characters and guilds, including unguilded characters
SELECT characters.name, guilds.name
  FROM characters
  LEFT JOIN guilds ON characters.guild_id = guilds.id
  ORDER BY characters.name;

-- Show players and count their characters
SELECT players.name, COUNT(*) num_characters
  FROM players, characters
  WHERE players.id = characters.player_id
  GROUP BY players.name;

-- List characters, their player, class and guild, including unguilded characters
SELECT characters.name, players.name, characters.class, guilds.name
  FROM characters
  JOIN players ON characters.player_id = players.id
  LEFT JOIN guilds ON characters.guild_id = guilds.id;