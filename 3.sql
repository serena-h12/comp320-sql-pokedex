select pokemon.identifier, abilities.identifier from pokemon
join pokemon_abilities on pokemon.id = pokemon_abilities.pokemon_id
join abilities on pokemon_abilities.ability_id = abilities.id
where abilities.id in (
    select ability_id
    from pokemon_abilities
    group by ability_id
    having count(distinct pokemon_id) = 1
)
order by lower(pokemon.identifier) asc;
