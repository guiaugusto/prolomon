# Prolomon

## O que é?

Prolomon é uma [pokedex](https://www.pokemon.com/br/pokedex/) com todos os pokémons da primeira à sexta geração, mostrando seus status como ataque, defesa, ataque especial, defesa especial, velocidade e tipo. O Prolomon é uma pokedex desenvolvida na linguagem prolog orientada ao paradigma lógico de programação.

## Objetivo

O objetivo deste projeto é auxiliar um jogador casual dos jogos de Pokémon a analisar especificadamente os status de determinado pokémon, podendo mostrar também, especificamente, os pokémons de determinado tipo para um planejamento do usuário, filtrando da seguinte maneira:

* Através do nome do pokémon
* Através do tipo do pokémon
* Através do id do pokémon

## Como utilizar?

Antes de executar a aplicação, é necessário instalar o swi-prolog:

```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:swi-prolog/stable
sudo apt-get update
sudo apt-get install swi-prolog
```

Após isso é só entrar na pasta da aplicação e executar:

```
swipl pokedex.pl
```

Importante lembrar que, a cada resposta a ser realizada, é necessário escrever a alternativa com um ponto final.

Exemplo:

![Menu](https://imgur.com/0DdtDk1)

## Referências

> MALTA,Lucas. Pokelog - Pokemon game made in prolog. Disponível em: <https://github.com/lucashm/pokelog>
