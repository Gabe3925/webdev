var pokemon = {

  pokemonList : allPokemon,

  // to run this: pokemon.printAllPokemonNamesToConsole();
  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    });
  },

  // Ruby corollary to the above:
  //  (pokemon.pokemonList).each do |monster|
  //    puts (monster.name)
  //  end

  //////////////////////////


  // to run this: pokemon.findPokemonByName('Pikachu');
  findPokemonByName : function(name){
    var match = _.find(pokemon.pokemonList, function(monster){
      return monster.name === name
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