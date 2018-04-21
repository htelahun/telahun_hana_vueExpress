var videoApp={
  //non-view related things
  addComments(data){
    //process the comments data and pushthem to Vue
    data.forEach(review => videoApp.vm.reviews.push(review));
  },

  vm: new Vue({
    delimiters : ["${","}"],

    el : "#movie",

    data :{
      reviews: [],

      numStars: 3,

      review: ""
    },

    methods:{
      addReview(){
        //stub
        let movieId = document.querySelector('.movId').textContent;

        fetch('/api-kids', {
          method: 'post',
          headers: {
            'Accept' : 'application/json, text-plain, */*',
            'Content-type': 'application/json'
          },
          body: JSON.stringify({
            id: movieId,
            stars: this.numStars,
            comment : this.review
          })
        })

        .then((resp)=> resp.json())
        .then((data) => {
          console.log(data);
        })
        .catch(function(error){
          console.log(error);
        });

      }
    }
  })
};

videoApp.addComments(appData.movies);
var comment = document.querySelector(".comment-message");
var show = document.querySelector(".popup");
var x = document.querySelector(".x");
var video = document.querySelector(".player");
var body = document.body;

function popup() {
  //console.log('got its');
  show.style.visibility = "visible";
  video.pause();

}
function close() {
  show.style.visibility = "hidden";
}

x.addEventListener('click', close, false);
comment.addEventListener('click', popup, false);
