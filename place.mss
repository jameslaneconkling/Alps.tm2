@fill: #666;
@halo: @bg;

#place_label {
  text-face-name: 'Arial Unicode MS Regular';
  text-name: [name];
  text-fill: @fill;
  text-halo-fill: @halo;
  text-halo-radius: 1;
  //text-halo-opacity: 0.8;
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
  text-name: [name];
  text-wrap-width: 40;
  [maki='park'] { 
    text-fill: #50877d;
    text-face-name: 'Merriweather Italic';
    text-line-spacing: 4;
    text-character-spacing: 0;
    [zoom < 10]{ text-size: 12; }
    [zoom >= 10]{ text-size: 14; }
    [zoom >= 12]{ text-size: 18; }
    [zoom >= 12]{ text-size: 22; }
  }
  [type='Glacier'] { 
//    text-fill: darken(@glacier, 25%);
    text-fill: #777;
    text-transform: uppercase;
    text-face-name: 'Merriweather Italic';
    text-line-spacing: 4;
    text-character-spacing: 0;
    [zoom >= 12]{ text-size: 14; }
  }
  [type='Peak'] { 
    text-fill: #444;
    text-face-name: 'Merriweather Bold';
    text-transform: uppercase;
    text-line-spacing: 6;
    text-character-spacing: 0;
    [zoom >= 12]{ text-size: 8; }
  }
  text-halo-fill: @halo;
  text-halo-radius: 1.2;
}

#water_label {
  text-face-name: 'Merriweather Regular';
  text-wrap-width: 40;
  text-name: [name];
  text-fill: darken(@water, 30%);
  text-halo-radius: 1;
  text-halo-fill: white;// @water;
}

#contour.label[ele!=0][zoom>=10] {
  [zoom<=12][index>=5],
  [zoom>=13][zoom<=15][index=10],
  [zoom>=16][index>=5] {
    text-name: "[ele]";
    text-face-name: 'Arial Unicode MS Regular';
    text-placement: line;
    text-size: 8;
    text-fill: #888;
    text-avoid-edges: true;
    text-halo-fill: #fff;
    text-comp-op: multiply;
    text-halo-radius: 0.8;
    //text-halo-opacity: 0.6;
    text-halo-rasterizer: fast;
    text-allow-overlap: true;
  }
  //[ele=3400]{ line-color: #ffa914; }
}