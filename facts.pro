% Hechos
pokemon(pikachu, electrico, nil). % el personaje ’Pikachu’ es de tipo el ctrico
pokemon(charizard, fuego, nil). % el personaje ’charizard’ es de tipo fuego y volador
pokemon(squirtle, agua, nil).
pokemon(meowth, normal, nil).
pokemon(gyarados, agua, nil).
pokemon(dragonite, dragon, volador). % el personaje ’Dragonite’ es de tipo d r a g n y volador
pokemon(mewtwo, psiquico, nil).

% Relaciones de efectividad entre tipos de pokemon
efectivo(electrico, agua). % un personaje de tipo ’el ctrico’ vence a uno de tipo ’agua’
efectivo(dragon, dragon).
efectivo(electrico, volador).
efectivo(fuego, acero).
efectivo(fuego, bicho).
efectivo(fuego, hielo).
efectivo(fuego, planta).
efectivo(volador, bicho).
efectivo(volador, planta).
efectivo(volador, lucha).

 % R e l a c i n de no efectividad entre tipos de pokemon
ineficaz(dragon, acero). % un personaje tipo ’dragon’ no puede vencer a uno tipo ’acero’
ineficaz(dragon, hada).
ineficaz(electrico, dragon).
ineficaz(electrico, electrico).
ineficaz(electrico, planta).
ineficaz(electrico, tierra).
ineficaz(fuego, agua).
ineficaz(fuego, dragon).
ineficaz(fuego, fuego).
ineficaz(fuego, roca).
ineficaz(volador, acero).
ineficaz(volador, electrico).
ineficaz(volador, roca).