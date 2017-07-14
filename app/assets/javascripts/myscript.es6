/*jshint esversion: 6 */
$(document).on('turbolinks:load', function() {
  selectPage();

  if (window.location.pathname == "/favorites") loadFavorites();

  checkError();

});

function selectPage() {
  //get the current URL
  var url = window.location.href;
  var activePage = url;
  $('li a').each(function() {
    var linkPage = this.href;

    //Add active class link that matches current URL
    if (activePage == linkPage) {
      $(this).closest("a").addClass("active");

    }
  });
}

function addFave(e,name,url) {
  var dom = e.target.parentElement;
  $(dom).addClass('fave');
  var gem = {
    name: name,
    url: url
  };
  addToStorage(gem);
}

function addToStorage(gem) {
  var gems = getGems();

  function included(item) {
    return item.name === gem.name;
  }

  if (!gems.some(included)) {
    gems.push(gem);
    console.log(`added ${gem.name} to collection`);
  } else {
    console.log(`${gem.name} is already one of your favorites`);
  }

  setGems(gems);
}

//Save gem array to local storage
function setGems(gems){
  localStorage.setItem("gems", JSON.stringify(gems));
}

// Get gems from local storage
function getGems() {

  var gems = JSON.parse(localStorage.getItem("gems") || "[]");
  return gems;
}

function loadFavorites() {
  var gems = getGems();
  gems.forEach(function(item) {
    $('.favorite-gems ul').append(
      `<li class="col-md-4">
        <span onclick='removeFave(event,"${item.name}")'>&#x2605</span>
      <a href=${item.url} target="_blank" >${item.name}</a> </li>`
    );
  });
  console.log("Favorite gems loaded");
}

function checkError() {
  var error = $('.error').text();
  if (error) {
    $('.form-control').css({
      "border-color": "#f55"
    });
  }

}

function removeFave(e,gemName) {
  var gems = getGems();
  var newGems = gems.filter(function(i) {
    return i.name != gemName;
  });

  //remove element from DOM
  e.target.parentElement.remove();

  setGems(newGems);
  console.log(newGems);
}
