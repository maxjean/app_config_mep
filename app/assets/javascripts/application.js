// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

// $(document).ready(function () {
//         var carousel = $("#carousel").waterwheelCarousel({
//           flankingItems: 3,
//           movingToCenter: function ($item) {
//             $('#callback-output').prepend('movingToCenter: ' + $item.attr('id') + '<br/>');
//           },
//           movedToCenter: function ($item) {
//             $('#callback-output').prepend('movedToCenter: ' + $item.attr('id') + '<br/>');
//           },
//           movingFromCenter: function ($item) {
//             $('#callback-output').prepend('movingFromCenter: ' + $item.attr('id') + '<br/>');
//           },
//           movedFromCenter: function ($item) {
//             $('#callback-output').prepend('movedFromCenter: ' + $item.attr('id') + '<br/>');
//           },
//           clickedCenter: function ($item) {
//             $('#callback-output').prepend('clickedCenter: ' + $item.attr('id') + '<br/>');
//           }
//         });

//         $('#prev').bind('click', function () {
//           carousel.prev();
//           return false
//         });

//         $('#next').bind('click', function () {
//           carousel.next();
//           return false;
//         });

//         $('#reload').bind('click', function () {
//           newOptions = eval("(" + $('#newoptions').val() + ")");
//           carousel.reload(newOptions);
//           return false;
//         });

//       });

$(document).ready(function() {
        var carousel = $("#carousel").featureCarousel({
          // include options like this:
          // (use quotes only for string values, and no trailing comma after last option)
          // option: value,
          // option: value
          sidePadding: 160

        });

        $("#but_prev").click(function () {
          carousel.prev();
        });
        $("#but_pause").click(function () {
          carousel.pause();
        });
        $("#but_start").click(function () {
          carousel.start();
        });
        $("#but_next").click(function () {
          carousel.next();
        });
      });

//   