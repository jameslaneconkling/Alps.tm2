@shadow: #e4dfdc; //#e4dbd5;
@highlight: #fff1df; //#ffeed8;
@glacier: #ebf4fb; // #327ABB;

@l-min: 0;
@l-max: 1000;
@l-steps: 10;
@l-bottom: #CDDED6; // #84b4ab; // color ramp bottom
@l-top:  #FDFAF1; // #FDFAF1; // color ramp top

@l0:  (@l-max - @l-min)*(0/@l-steps) + @l-min;
@l1:  (@l-max - @l-min)*(1/@l-steps) + @l-min;
@l2:  (@l-max - @l-min)*(2/@l-steps) + @l-min;
@l3:  (@l-max - @l-min)*(3/@l-steps) + @l-min;
@l4:  (@l-max - @l-min)*(4/@l-steps) + @l-min;
@l5:  (@l-max - @l-min)*(5/@l-steps) + @l-min;
@l6:  (@l-max - @l-min)*(6/@l-steps) + @l-min;
@l7:  (@l-max - @l-min)*(7/@l-steps) + @l-min;
@l8:  (@l-max - @l-min)*(8/@l-steps) + @l-min;
@l9:  (@l-max - @l-min)*(9/@l-steps) + @l-min;
@l10: (@l-max - @l-min)*(10/@l-steps) + @l-min;


@h-min: 2000;
@h-max: 3000;
@h-steps: 10;
@h-bottom: #FDFAF1; // #84b4ab;
@h-top:  #d7c3b4; // #FDFAF1;
// #783f17;
// #b06e40;
// #bb9c86;
// #d0b39f;

@h0:  (@h-max - @h-min)*(0/@h-steps) + @h-min;
@h1:  (@h-max - @h-min)*(1/@h-steps) + @h-min;
@h2:  (@h-max - @h-min)*(2/@h-steps) + @h-min;
@h3:  (@h-max - @h-min)*(3/@h-steps) + @h-min;
@h4:  (@h-max - @h-min)*(4/@h-steps) + @h-min;
@h5:  (@h-max - @h-min)*(5/@h-steps) + @h-min;
@h6:  (@h-max - @h-min)*(6/@h-steps) + @h-min;
@h7:  (@h-max - @h-min)*(7/@h-steps) + @h-min;
@h8:  (@h-max - @h-min)*(8/@h-steps) + @h-min;
@h9:  (@h-max - @h-min)*(9/@h-steps) + @h-min;
@h10: (@h-max - @h-min)*(10/@h-steps) + @h-min;

#contour.fill::poly {
  [ele< @l0]  { polygon-fill: @l-bottom; }
  [ele>=@l0]  { polygon-fill: mix(@l-top, @l-bottom, 0/@l-steps*100); }
  [ele>=@l1]  { polygon-fill: mix(@l-top, @l-bottom, 1/@l-steps*100); }
  [ele>=@l2]  { polygon-fill: mix(@l-top, @l-bottom, 2/@l-steps*100); }
  [ele>=@l3]  { polygon-fill: mix(@l-top, @l-bottom, 3/@l-steps*100); }
  [ele>=@l4]  { polygon-fill: mix(@l-top, @l-bottom, 4/@l-steps*100); }
  [ele>=@l5]  { polygon-fill: mix(@l-top, @l-bottom, 5/@l-steps*100); }
  [ele>=@l6]  { polygon-fill: mix(@l-top, @l-bottom, 6/@l-steps*100); }
  [ele>=@l7]  { polygon-fill: mix(@l-top, @l-bottom, 7/@l-steps*100); }
  [ele>=@l8]  { polygon-fill: mix(@l-top, @l-bottom, 8/@l-steps*100); }
  [ele>=@l9]  { polygon-fill: mix(@l-top, @l-bottom, 9/@l-steps*100); }
  [ele>=@l10] { polygon-fill: mix(@l-top, @l-bottom, 10/@l-steps*100); }

  [ele>=@h0]  { polygon-fill: mix(@h-top, @h-bottom, 0/@h-steps*100); }
  [ele>=@h1]  { polygon-fill: mix(@h-top, @h-bottom, 1/@h-steps*100); }
  [ele>=@h2]  { polygon-fill: mix(@h-top, @h-bottom, 2/@h-steps*100); }
  [ele>=@h3]  { polygon-fill: mix(@h-top, @h-bottom, 3/@h-steps*100); }
  [ele>=@h4]  { polygon-fill: mix(@h-top, @h-bottom, 4/@h-steps*100); }
  [ele>=@h5]  { polygon-fill: mix(@h-top, @h-bottom, 5/@h-steps*100); }
  [ele>=@h6]  { polygon-fill: mix(@h-top, @h-bottom, 6/@h-steps*100); }
  [ele>=@h7]  { polygon-fill: mix(@h-top, @h-bottom, 7/@h-steps*100); }
  [ele>=@h8]  { polygon-fill: mix(@h-top, @h-bottom, 8/@h-steps*100); }
  [ele>=@h9]  { polygon-fill: mix(@h-top, @h-bottom, 9/@h-steps*100); }
  [ele>=@h10] { polygon-fill: mix(@h-top, @h-bottom, 10/@h-steps*100); }
}


#contour.line::line {
  line-width: 0.5;
  line-color: rgba(184, 184, 184, 0.5);
}

#hillshade {
  comp-op: multiply;
  [level=94]{ polygon-fill: lighten(@highlight,5); }
  [level=90]{ polygon-fill: lighten(@highlight,2); }
  [level=89]{ polygon-fill: lighten(@highlight,0); }
  [level=78]{ polygon-fill: darken(@shadow, 0); }
  [level=67]{ polygon-fill: darken(@shadow, 4); }
  [level=56]{ polygon-fill: darken(@shadow, 14); }
}

/*
#landcover [class='snow']{
  line-color: #fa5d28;
  line-width: 0.5;
}
*/

#landuse [class='glacier']{
  ::casing {
    [zoom >= 10]{
      line-color: #aaa;
      line-width: 1;
    }
    [zoom >= 12]{
      //line-color: darken(@glacier, 15%);
      line-color: #a6aeb4;
      line-width: 2;
      line-dasharray: 2,1;
    }
    [zoom >= 14]{
      line-width: 2;
      line-dasharray: 2,3;
    }
  }
  ::fill {
    polygon-fill: white;
    /*
    [zoom >= 10]{
      polygon-fill: white;
    }
    [zoom >= 12]{
      //polygon-fill: lighten(@glacier, 20%);
      polygon-opacity: 0.9;
      //polygon-comp-op: color;
    }
    [zoom >= 14]{
    
    }*/
  }
}

