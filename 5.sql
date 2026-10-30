select lower(pokemon.identifier), count(*)
from pokemon
join pokemon_species on pokemon.species_id = pokemon_species.id
join pokemon_evolution on pokemon_evolution.evolved_species_id = pokemon_species.id
where pokemon_species.generation_id = 1
and pokemon.is_default = 1
group by pokemon_evolution.evolved_species_id
having count(*) > 1
order by pokemon.identifier;


