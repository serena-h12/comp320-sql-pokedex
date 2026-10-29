select lower(pokemon_species.identifier), count(*) from pokemon_species
join pokemon_evolution on pokemon_evolution.evolved_species_id = pokemon_species.id
where pokemon_species.generation_id = 1
group by pokemon_species.id
having count(*) > 1;
