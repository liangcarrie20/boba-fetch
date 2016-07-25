$(document).ready(function() {
  showAddDrinkForm();
  addDrink();
  showAddReviewForm();
  addReview();
  showDrinks();
  showAddShopForm();
});

function showAddDrinkForm() {
  $('#add-drink').on('click', 'a', function(event) {
    event.preventDefault();
    var $path = $(this).attr('href');

    $(this).hide();
    $('#drink-list').hide();
    $('#view-drinks').show();

    $.ajax({
      method: 'GET',
      url: $path
    })
    .done(function(serverResponse) {
      $('#add-drink').append(serverResponse);
    })
  })
}

function addDrink() {
  $('#add-drink').on('submit', '.add-drink-partial-form', function(event){
    event.preventDefault();
    var $newDrinkForm = $(this);
    var $path = $(this).attr('action');
    var $formData = $(this).serialize();

    $.ajax({
      url: $path,
      method: 'POST',
      data: $formData
    })
    .done(function(response) {
      $(response).appendTo('#add-drink')
      $($newDrinkForm).hide();
      $($newDrinkForm).remove();
      $('#add-drink').children().show();
      $('#view-drinks').children().show();
    });
  });
}

function showAddReviewForm() {
  $('#add-review').on('click', 'a', function(event) {
    event.preventDefault();
    var $path = $(this).attr('href');

    $(this).hide();

    $.ajax({
      method: 'GET',
      url: $path
    })
    .done(function(serverResponse) {
      $('#add-review').append(serverResponse);
    })
  })
}

function addReview() {
  $('#add-review').on('submit', '.add-review-partial-form', function(event){
    event.preventDefault();
    var $newReviewForm = $(this);
    var $path = $(this).attr('action');
    var $formData = $(this).serialize();

    $.ajax({
      url: $path,
      method: 'POST',
      data: $formData
    })
    .done(function(response) {
      $(response).prependTo('.review-list')
      $($newReviewForm).hide();
      $($newReviewForm).remove();
      $('#add-review').children().show();
    });
  });
}

function showDrinks() {
  $('#view-drinks').on('click', 'a', function(event) {
    event.preventDefault();
    
    $(this).hide();

    var $path = $(this).attr('href');

    $.ajax({
      url: $path,
      method: 'GET'
    })
    .done(function(sResponse) {
      $('#drink-list').show();
      $('#drink-list').html(sResponse);
    })
  })
}

function showAddShopForm() {
  $('#add-drink').on('click', 'a', function(event) {
    event.preventDefault();
    var $path = $(this).attr('href');

    // $.ajax({
    //   method: 'GET',
    //   url: $path
    // })
    // .done(function(serverResponse) {
    //   $('#add-drink').append(serverResponse);
    // })
  })
}