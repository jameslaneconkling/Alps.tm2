@fill: #666;
@halo: @bg;

#place_label {
  text-face-name: 'Arial Unicode MS Regular';
  text-name: [name];
  text-fill: @fill;
  text-halo-fill: @halo;
  text-halo-radius: 1;
  text-halo-opacity: 0.8;
  text-dy: -5;
  text-size: 6;
  [type='hamlet'] {
    // zoom 13+
    [zoom=13] { text-size: 8; }
    [zoom=14] { text-size: 10; }
    [zoom>=15] { text-size: 13; }
  }
  [type='village'] { 
    // zoom 10+
    [zoom>=10] { text-size: 7; }
    [zoom>=12] { text-size: 10; }
    [zoom>=14] { text-size: 12; }
  }
  [type='town'] { 
    // zoom 6+
    [zoom>=6] { text-size: 7; }
    [zoom>=8] { text-size: 9; }
    [zoom>=10] { text-size: 11; }
    [zoom>=12] { text-size: 13; }
    [zoom>=14] { text-size: 15; }
  }
  [type='city'] { 
    // zoom 4+
    [zoom>=4] { text-size: 7; }
    [zoom>=6] { text-size: 10; }
    [zoom>=8] { text-size: 12; }
    [zoom>=10] { text-size: 14; }
    [zoom>=12] { text-size: 16; }
    [zoom>=14] { text-size: 18; }
  }
  marker-width: 2;
  marker-line-width: 0;
  marker-fill: @fill;
}

#poi_label [maki='park'],
#poi_label [type='Glacier'],
#poi_label [type='Peak']{
  text-face-name: 'Merriweather Italic';
  text-name: [name];
  //text-fill: red;
  text-wrap-width: 40;
  [maki='park'] { text-fill: #7e9171; }
  [type='Glacier'] { text-fill: #868fa2; }
  [type='Peak'] { text-fill: #9f86a2; }
  text-halo-fill: @halo;
  text-halo-radius: 1;
  [zoom < 10]{ text-size: 14; }
  [zoom >= 10]{ text-size: 18; }
  [zoom >= 12]{ text-size: 22; }
}