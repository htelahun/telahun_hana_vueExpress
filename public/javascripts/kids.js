var myApp ={
  movieGenres(data, genres){
    //filter the dataset and create an array of genres -> one object fr each genre in the database
    genres.forEach((genre, index)=> myApp.vm.genres.push({name: genre, movies:data.filter(movie => movie.genre_name === genre) }));
  },

  vm : new Vue({

    delimiters : ["${","}"],
    el : "#app",

    data : {
      message : "Roku video player",
      genres: []
    },

    methods :{

    }


  })
}

myApp.movieGenres(appData.movies, ["ACTION", "COMEDY"]);
