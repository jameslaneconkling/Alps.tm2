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
  [type='hamlet'] { text-size: 7; }
  [type='village'] { text-size: 10; }
  [type='town'] { text-size: 12; }
  [type='city'] { text-size: 16; }
  marker-width: 3;
  marker-line-width: 0;
  marker-fill: @fill;
}

#poi_label {
  text-face-name: 'Arial Unicode MS Regular';
  text-name: [name];
  text-size: 20;
}