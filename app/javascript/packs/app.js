jQuery(function($){
  $('.tab').click(function(){
    $('.is-active').removeClass('is-active');
    $(this).addClass('is-active');
    $('.is-show').removeClass('is-show');
    // クリックしたタブからインデックス番号を取得
    const index = $(this).index();
    // クリックしたタブと同じインデックス番号をもつコンテンツを表
    $('.panel').eq(index).addClass('is-show');
  });
});

$(function() {
  $('.menu-btn').click(function() {
    $(this).toggleClass('active');
    if ($(this).hasClass('active')) {
      $('.gnavi__sp-style').addClass('active');
    } else {
      $('.gnavi__sp-style').removeClass('active');
    }
  });
});