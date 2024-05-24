% Hechos
pokemon(pikachu, electrico, nil). % el personaje ’Pikachu’ es de tipo el ctrico
pokemon(charizard, fuego, volador). % el personaje ’charizard’ es de tipo fuego y volador
pokemon(squirtle, agua, nil).
pokemon(meowth, normal, nil).
pokemon(gyarados, agua, nil).
pokemon(dragonite, dragon, volador). % el personaje ’Dragonite’ es de tipo d r a g n y volador
pokemon(mewtwo, psiquico, nil).
pokemon(growlithe, fuego, nil).
pokemon(venasaur, planta, veneno).
pokemon(poliwag, agua, nil).
pokemon(magnemite, electrico, acero).
pokemon(blastoise, agua, nil).
pokemon(magikarp, agua, nil).
pokemon(flareon, fuego, nil).
pokemon(magmar, fuego, nil).
pokemon(moltres, fuego, volador).
pokemon(charmander, fuego, nil).
pokemon(vulpix, fuego, nil).
pokemon(bulbasaur, planta, veneno).
pokemon(vaporeon, agua, nil).
pokemon(articuno, hielo, volador).
pokemon(lapras, agua, hielo).
pokemon(jolteon, electrico, nil).
pokemon(electabuzz, electrico, nil).
pokemon(zapdos, electrico, volador).
pokemon(rattata, normal, nil)
pokemon(pidgey, normal, volador).


% Relaciones de efectividad entre tipos de pokemon
efectivo(acero, hada).
efectivo(acero, hielo).
efectivo(acero, tierra).
ineficaz(acero, acero).
ineficaz(acero, agua).
ineficaz(acero, electrico).
ineficaz(acero, fuego).

efectivo(agua, fuego).
efectivo(agua, roca).
efectivo(agua, tierra).
ineficaz(agua, agua).
ineficaz(agua, dragon).
ineficaz(agua, planta).

efectivo(bicho, planta).
efectivo(bicho, psiquico).
efectivo(bicho, siniestro).
ineficaz(bicho, acero).
ineficaz(bicho, fantasma).
ineficaz(bicho, hada).
ineficaz(bicho, fuego).
ineficaz(bicho, lucha).
ineficaz(bicho, veneno).
ineficaz(bicho, volador).

efectivo(dragon, dragon).
ineficaz(dragon, acero). % un personaje tipo ’dragon’ no puede vencer a uno tipo ’acero’
ineficaz(dragon, hada).

efectivo(electrico, agua). % un personaje de tipo ’el ctrico’ vence a uno de tipo ’agua’
efectivo(electrico, volador).
ineficaz(electrico, dragon).
ineficaz(electrico, electrico).
ineficaz(electrico, planta).
ineficaz(electrico, tierra).

efectivo(fantasma, psiquico).
efectivo(fantasma, fantasma).
ineficaz(fantasma, siniestro).
ineficaz(fantasma, normal).

efectivo(fuego, acero).
efectivo(fuego, bicho).
efectivo(fuego, hielo).
efectivo(fuego, planta).
ineficaz(fuego, agua).
ineficaz(fuego, dragon).
ineficaz(fuego, fuego).
ineficaz(fuego, roca).

eficaz(hada, dragon).
eficaz(hada, lucha).
eficaz(hada, siniestro).
ineficaz(hada, acero).
ineficaz(hada, fuego).
ineficaz(hada, veneno).

eficaz(hielo, dragon).
eficaz(hielo, planta).
eficaz(hielo, tierra).
eficaz(hielo, volador).
ineficaz(hielo, acero).
ineficaz(hielo, fuego).
ineficaz(hielo, agua).
ineficaz(hielo, hielo).

eficaz(lucha, acero).
eficaz(lucha, hielo).
eficaz(lucha, normal).
eficaz(lucha, roca).
eficaz(lucha, siniestro).
ineficaz(lucha, bicho).
ineficaz(lucha, hada).
ineficaz(lucha, psiquico).
ineficaz(lucha, veneno).
ineficaz(lucha, volador).
ineficaz(lucha, fantasma).

ineficaz(normal, acero).
ineficaz(normal, roca).
ineficaz(normal, fantasma).

eficaz(planta, agua).
eficaz(planta, roca).
eficaz(planta, tierra).
ineficaz(planta, bicho).
ineficaz(planta, acero).
ineficaz(planta, dragon).
ineficaz(planta, veneno).
ineficaz(planta, fuego).
ineficaz(planta, planta).
ineficaz(planta, volador).

eficaz(psiquico, lucha).
eficaz(psiquico, veneno).
ineficaz(psiquico, acero).
ineficaz(psiquico, psiquico).
ineficaz(psiquico, siniestro).

efectivo(roca, fuego).
efectivo(roca, bicho).
efectivo(roca, hielo).
efectivo(roca, volador).
ineficaz(roca, acero).
ineficaz(roca, lucha).
ineficaz(roca, tierra).
ineficaz(roca, roca).

eficaz(siniestro, fantasma).
eficaz(siniestro, psiquico).
ineficaz(siniestro, hada).
ineficaz(siniestro, lucha).
ineficaz(siniestro, siniestro).

eficaz(tierra, acero).
eficaz(tierra, electrico).
eficaz(tierra, veneno).
eficaz(tierra, roca).
eficaz(tierra, fuego).
ineficaz(tierra, bicho).
ineficaz(tierra, planta).
ineficaz(tierra, volador).

eficaz(veneno, planta).
eficaz(veneno, hada).
ineficaz(veneno, fantasma).
ineficaz(veneno, roca).
ineficaz(veneno, tierra).
ineficaz(veneno, veneno).
ineficaz(veneno, acero).

efectivo(volador, bicho).
efectivo(volador, planta).
efectivo(volador, lucha).
ineficaz(volador, acero).
ineficaz(volador, electrico).
ineficaz(volador, roca).

oponente(candela, [flareon, magmar, moltres]).
oponente(blanche, [vaporeon, articuno, lapras]).
oponente(spark, [jolteon, electabuzz, zapdos]).
oponente(gary, [venasaur, blastoise, charizard]).

pokemon_es(POKEMON, TIPO):-pokemon(POKEMON, TIPO,_);pokemon(POKEMON,_,TIPO).

eficaz_contra( A, B):-pokemon_es(A,TIPO_A), pokemon_es(B, TIPO_B), efectivo(TIPO_A, TIPO_B).
ineficaz_contra( A, B):-pokemon_es(A,TIPO_A), pokemon_es(B, TIPO_B), ineficaz(TIPO_A, TIPO_B).

vence(A, B):-eficaz_contra(A, B),\+ineficaz_contra(A,B).

entrenador_tiene(ENTRENADOR, POKEMON):-oponente(ENTRENADOR, [POKEMON, _, _]); oponente(ENTRENADOR, [_, POKEMON, _]); oponente(ENTRENADOR, [_,_,POKEMON]).

esta(POKEMON, TEAM):- member(POKEMON, TEAM).
entrenador_team_es(ENTRENADOR, POKEMON_A, POKEMON_B, POKEMON_C):- oponente(ENTRENADOR, [POKEMON_A, POKEMON_B, POKEMON_C]).
mi_team_es(POKEMON_A, POKEMON_B, POKEMON_C, MI_TEAM):- [POKEMON_A, POKEMON_B, POKEMON_C] = MI_TEAM.
combate(MI_TEAM, OPONENTE):-mi_team_es(A,B,C, MI_TEAM), entrenador_team_es(OPONENTE, D, E, F), (
  (vence(A,D); vence(B,D); vence(C,D)),
  (vence(A,E); vence(B,E); vence(C,E)),
  (vence(A,F); vence(B,F); vence(C,F))
).