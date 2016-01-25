@shadow: #e4dfdc; //#e4dbd5;
@highlight: #fff1df; //#ffeed8;
@glacier: #ebf4fb; // #327ABB;

@min: 0;
@max: 1000;
@steps: 10;

@0: (@max - @min)*(0/@steps) + @min;
@1: (@max - @min)*(1/@steps) + @min;
@2: (@max - @min)*(2/@steps) + @min;
@3: (@max - @min)*(3/@steps) + @min;
@4: (@max - @min)*(4/@steps) + @min;
@5: (@max - @min)*(5/@steps) + @min;
@6: (@max - @min)*(6/@steps) + @min;
@7: (@max - @min)*(7/@steps) + @min;
@8: (@max - @min)*(8/@steps) + @min;
@9: (@max - @min)*(9/@steps) + @min;
@10: (@max - @min)*(10/@steps) + @min;

@low: #84b4ab;
@high: #FDFAF1; //  white; //#cdbb8a;

#contour.fill::poly {
  [ele<@0] { polygon-fill: @low; }
  [ele>=@0] { polygon-fill: mix(@high, @low, 0/@steps*100); }
  [ele>=@1] { polygon-fill: mix(@high, @low, 1/@steps*100); }
  [ele>=@2] { polygon-fill: mix(@high, @low, 2/@steps*100); }
  [ele>=@3] { polygon-fill: mix(@high, @low, 3/@steps*100); }
  [ele>=@4] { polygon-fill: mix(@high, @low, 4/@steps*100); }
  [ele>=@5] { polygon-fill: mix(@high, @low, 5/@steps*100); }
  [ele>=@6] { polygon-fill: mix(@high, @low, 6/@steps*100); }
  [ele>=@7] { polygon-fill: mix(@high, @low, 7/@steps*100); }
  [ele>=@8] { polygon-fill: mix(@high, @low, 8/@steps*100); }
  [ele>=@9] { polygon-fill: mix(@high, @low, 9/@steps*100); }
  [ele>=@10] { polygon-fill: mix(@high, @low, 10/@steps*100); }
  opacity: 0.4;
  ::peaks[ele>2000][zoom>=8][zoom<=10] {
    polygon-fill: #783f17;
    // polygon-comp-op: multiply;
    [zoom=8]{ polygon-opacity: 0.4; }
    [zoom=9]{ polygon-opacity: 0.15; }
    [zoom=10]{ polygon-opacity: 0.05; }
    [zoom>=11]{ polygon-opacity: 0.02; }
  }
  ::peaks[ele>2500][zoom>=10][zoom<=11] {
    polygon-fill: #b06e40;
    // polygon-comp-op: multiply;
    [zoom=10]{ polygon-opacity: 0.1; }
    [zoom>=11]{ polygon-opacity: 0.05; }
  }
  ::peaks[ele>3000][zoom>=11][zoom<=13] {
    polygon-fill: #bb9c86;
    // polygon-comp-op: multiply;
    [zoom=11]{ polygon-opacity: 0.1; }
    [zoom>=12]{ polygon-opacity: 0.06; }
  }
  ::peaks[ele>4000][zoom>=12][zoom<=15] {
    polygon-fill: #d0b39f;
    // polygon-comp-op: multiply;
    [zoom=12]{ polygon-opacity: 0.1; }
    [zoom=13]{ polygon-opacity: 0.1; }
    [zoom=14]{ polygon-opacity: 0.1; }
    [zoom=15]{ polygon-opacity: 0.06; }
  }
}


#contour.line::line {
  line-width: 0.5;
  line-color: rgba(184, 184, 184, 0.5);
}

#contour.label {
  
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

