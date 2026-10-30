select lower(pokemon.identifier), count(*)
from pokemon
join pokemon_species on pokemon.species_id = pokemon_species.id
join pokemon_species AS evolved on pokemon_species.id = evolved.evolves_from_species_id
where pokemon.is_default = 1
group by pokemon.species_id
having count(*) > 1
order by pokemon.identifier;