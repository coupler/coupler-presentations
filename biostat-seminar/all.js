var stamped = false;
function slide2_next(e) {
  var s = $(e.target);
  if (!stamped) {
    stamped = true;
    e.preventDefault();
    s.find('img').show();
  }
  else {
    stamped = false;
    s.find('img').hide();
  }
}
function slide2_prev(e) {
  var s = $(e.target);
  if (stamped) {
    stamped = false;
    s.find('img').hide();
    e.preventDefault();
  }
}

var highlight = 0;
var highlight_colors = ['blue', 'green', 'purple'];
function slide3_next(e) {
  var s = $(e.target);
  highlight++;
  var obj = s.find('.highlight-'+highlight);
  if (obj.length > 0) {
    obj.css('border', '2px solid '+highlight_colors[highlight-1]);
    e.preventDefault();
  }
}
