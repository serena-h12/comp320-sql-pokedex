select pokemon.identifier, pokemon_stats.base_stat from pokemon
join pokemon_stats on pokemon.id = pokemon_stats.pokemon_id
join stats on stats.id = pokemon_stats.stat_id
where stats.identifier = 'speed'
order by base_stat desc limit 1;

