select lower(pokemon.identifier), lower((select identifier from pokemon where species_id = pokemon_species.evolves_from_species_id))
from pokemon
join pokemon_species on pokemon.species_id = pokemon_species.id
where pokemon_species.generation_id = 1
and pokemon.is_default = 1
and pokemon_species.evolves_from_species_id in (select id from pokemon_species where generation_id > 1);