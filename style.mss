@bg: #fdfaf1;
@water: #dcf1fb;
@crop: #fec;

Map {
  background-color: @bg;
}

#waterway {
  line-color: darken(@water, 5%);
  [zoom>=8]{ line-width: 0.8; }
  [zoom>=10]{ line-width: 1; }
  [zoom>=12]{ line-width: 1.2; }
  [zoom>=14]{ line-width: 1.6; }
}

#water {
  polygon-fill: @water;
  line-color: darken(@water, 5%);
  
}

#building {
  polygon-fill: #cecece;
}

#road,
#bridge {
  line-color: #aeaeae;
  line-width: 0;
  [zoom>=12]{ line-width: 0.8; }
}

#admin[admin_level=2][maritime=0] {
  ::case {
    line-color: #666; 
    line-join: round;
    line-cap: round;
    line-width: 0.8;
    line-smooth: 1;
    [zoom>=9] { line-width: 1; }
    [zoom>=11]{ line-width: 2; }
  }
  ::fill {
    line-color: white;
    line-join: round;
    line-dasharray: 3,2;
    line-width: 0.4;
    line-smooth: 1;
    [zoom>=9] { line-width: 0.6; }
    [zoom>=11]{ line-width: 1.2; line-dasharray: 5,3; }
  }
}

#admin[admin_level=4]{
  line-color: #838383;
  line-dasharray: 2,1;
  [zoom>=9] { line-width: 0.6; }
  [zoom>=11]{ line-width: 1; line-dasharray: 2,3; }
}