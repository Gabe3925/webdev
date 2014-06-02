var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    });
  },
  //--> pokemon.printAllPokemonNamesToConsole()

  findPokemonByName : function(name){
    var match = _.find(pokemon.pokemonList, function(monster) {
    });
    return match;
  },  

  findStrongestPokemon : function(){
  },

  findPokemonByType : function(type){
  },

  findAllTypes : function(){
  },

  totalStats : function(name){
  }
}
