document.addEventListener("turbolinks:load", function() {
  $('.listing-expand-button').on('click', function() {
    var target = $(this);
    var listing = target.closest('.listing')
    var description = listing.find('.listing-description');
    var isHidden = description.prop("hidden");
    var willBeHidden = !isHidden;
    description.prop("hidden", willBeHidden)
  })
})
// $(function() {
//   $('.listing-expand-button').on('click', function() {
//     var target = $(this);
//     var listing = target.closest('.listing')
//     var description = listing.find('.listing-description');
//     var isHidden = description.prop("hidden");
//     var willBeHidden = !isHidden;
//     description.prop("hidden", willBeHidden)
//   })
// });

// find is the same as dollar except that you apply to the jQuery elemnt  where you want to start the search
