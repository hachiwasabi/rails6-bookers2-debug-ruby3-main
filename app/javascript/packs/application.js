// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

  import Rails from "@rails/ujs"
  import Turbolinks from "turbolinks"
  import * as ActiveStorage from "@rails/activestorage"
  import "channels"
  
  
  import "bootstrap"
  import "../stylesheets/application"
  import "jquery"
  import "popper.js"

  import Raty from "raty-js";

  document.addEventListener("turbolinks:load", function(){
    document.querySelectorAll('[id^="post_raty_"]').forEach(function(elem){
      const score = parseFloat(elem.dataset.score) || 0;
      new Raty(elem, {
        score: score,
        starOn:  "/assets/star-on.png",
        starOff: "/assets/star-off.png",
        starHalf: "/assets/star-half.png",
        click: function(score) {
          console.log("選択されたスコア:", score);
        }
      }).init();
    });
  });


  
  Rails.start()
  Turbolinks.start()
  ActiveStorage.start()
