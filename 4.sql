select lower(pokemon.identifier) from pokemon 
join pokemon_types on pokemon.id = pokemon_types.pokemon_id
join types on pokemon_types.type_id = types.id
where types.identifier in ('flying', 'fighting')
group by lower(pokemon.identifier)
having count(types.identifier) = 2; 