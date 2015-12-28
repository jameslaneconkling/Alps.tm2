@bg: #fdfaf1;
@water: #dcf1fb;
@crop: #fec;

Map {
  background-color: @bg;
}

/*
#landcover {
  [class="crop"] { polygon-fill: @crop; }
}
*/
#waterway {
  line-width: 1;
  line-color: darken(@water, 5%);
}

#water {
  polygon-fill: @water;
  line-color: darken(@water, 5%);
}