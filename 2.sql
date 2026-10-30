select lower(pokemon.identifier), pokemon_stats.base_stat from pokemon
join pokemon_stats on pokemon.id = pokemon_stats.pokemon_id
join stats on stats.id = pokemon_stats.stat_id
join pokemon_game_indices on pokemon.id = pokemon_game_indices.pokemon_id
where stats.identifier = 'attack' 
and pokemon_game_indices.version_id = 1
order by base_stat desc limit 1; 
