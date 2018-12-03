:- dynamic response/2.
:- dynamic options/1.
:- dynamic list_pokemons_id/1.
:- [pokedex_list].

start_use :-
    nl, write('Esta é uma pokedex que informa todos os pokemons até a sexta geração.'),
    nl, write('Deseja escolher alguma opção?'),
    nl, write('(1) - Pesquisar pokemon pelo id.'),
    nl, write('(2) - Pesquisar pokemon pelo nome.'),
    nl, write('(3) - Pesquisar pokemon pelo tipo.'),
    nl, write('(4) - Listar todos os pokemons'),
    nl, write('(5) - Sair'), nl,
    read(Option),
    option(Option).

option(1) :-
    nl, write('Digite o id do pokemon a ser pesquisado:'), nl,
    read(Id), list_pokemons_id(Id).

option(2) :-
    nl, write('Digite o nome do pokemon a ser pesquisado'), nl,
    read(Nome), list_pokemons_name(Nome).

option(3) :-
    nl, write('Digite o primeiro tipo do pokemon a ser pesquisado:'), nl,
    read(FirstType), nl, list_pokemons_type(FirstType).

option(4) :-
    nl, list_all_pokemons().

option(5) :-
    nl, end_pokedex.

list_all_pokemons() :-
    forall(pokemon(Id, NomePokemon, FirstType, SecondType, Total, HP, Attack, Defense, SpAtk, SpDef, Speed, Generation),
    (nl, write('--------INFORMAÇÃO--------'), nl,
    write('ID: '),write(Id), nl,
    write('Nome: '),write(NomePokemon), nl,
    write('Tipo: '),write(FirstType), write(' - '), write(SecondType), nl,
    write('HP: '),write(HP), nl,
    write('Attack: '),write(Attack), nl,
    write('Defense: '),write(Defense), nl,
    write('SpAtk: '),write(SpAtk), nl,
    write('SpDef: '),write(SpDef), nl,
    write('Speed: '),write(Speed), nl,
    write('Total: '),write(Total), nl,
    write('Geração: '),write(Generation), nl,
    write('--------------------------'), nl)), nl, nl,
    start_use.

end_pokedex :-
    nl, nl, write('Volte sempre!'), nl, nl, !, halt.

?- start_use.
