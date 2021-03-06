var express = require('express');
var router = express.Router();
var connect = require('../utils/sqlConnect');

/* GET home page. */
router.get('/', (req, res, next) => {
  connect.query(`SELECT * FROM tbl_movies m, tbl_genre g, tbl_mov_gen mg WHERE m.movie_id = mg.movie_id AND g.genre_id = mg.genre_id`, (error, rows)=>{
    if (error){
      throw error;
    }else{
      res.render('home',
            {title: 'Rendel',
            desc: "Rendel is a 2017 Finnish superhero film written, produced and directed by Jesse Haaja. The film is based on Haaja's self-created superhero, Rendel. Lead roles are played by Kris Gummerus, Matti Onnismaa, Rami Rusinen and Renne Korppila. The rest of the cast includes Alina Tomnikov, Tero Salenius, Aake Kalliala, Anu Palevaara and Kristina Karjalainen.",

            //defaultMovie : rows[Math.floor(Math.random()*rows.length)],
            data: JSON.stringify(rows),
            index:true,
            mainpage: true,
            videopage: false,
            kidsplayer: false,
            kidspage: false

       });
    }
  })

  });

  router.get('/movies/:id/:vidsrc', (req,res)=> {
// get the movie details from the server
console.log(req.params.id, req.params.vidsrc);
connect.query(`SELECT * FROM tbl_comments WHERE comments_movie = "${req.params.id}"`, (err,rows)=>{
  if(err){
    console.log(err);
  }else {
    res.render('movie',{
      movie:req.params.id,
      trailer: req.params.vidsrc,
      data: JSON.stringify(rows),
      mainpage: false,
      videopage: true,
      kidsplayer: false,
      kidspage: false

        });
      }
    })
  });
module.exports = router;
