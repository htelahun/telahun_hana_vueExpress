var express = require('express');
var router = express.Router();
var connect = require('../utils/sqlConnect');

/* GET home page. */
router.get('/', (req, res, next) => {
  connect.query(`SELECT * FROM tbl_kids k, tbl_genre g, tbl_mov_gen mg WHERE k.kids_id = mg.movie_id AND g.genre_id = mg.genre_id`, (error, rows)=>{
    if (error){
      throw error;
    }else{
      res.render('kids',
            { title: "The Boss Baby",
       desc : "A man named Tim Templeton tells a story about his 7-year-old self who lives with his parents, Ted and Janice. Ted and Janice work in a puppy factory called Puppy Co. founded by a man named Francis E. Francis. ",

            //defaultMovie : rows[Math.floor(Math.random()*rows.length)],
            data: JSON.stringify(rows),
            mainpage: false,
            videopage: false,
            kidsplayer: false,
            kidspage: true
       });
    }
  })

  });

  router.get('/kids-movies/:id/:vidsrc', (req,res)=> {
// get the movie details from the server
console.log(req.params.id, req.params.vidsrc);
connect.query(`SELECT * FROM tbl_comments WHERE comments_movie = "${req.params.id}"`, (err,rows)=>{
  if(err){
    console.log(err);
  }else {
    res.render('kidsPlayer',{
      movie:req.params.id,
      trailer: req.params.vidsrc,
      data: JSON.stringify(rows),
      mainpage: false,
      videopage: false,
      kidsplayer: true,
      kidspage: false
        });
      }
    })
  });
module.exports = router;
