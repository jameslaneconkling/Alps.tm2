@shadow: #e4dbd5;
@highlight: #ffeed8;

@min: 1000;
@max: 5000;
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

@low: #daefff;
@high: #c7ad67;
/*
#contour::hypso {
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
  comp-op: multiply;
  opacity: 0.8;
}
*/

#contour::line {
  line-width: 0.5;
  line-color: rgba(184, 184, 184, 0.5);
}

#hillshade {
  [level=94]{ polygon-fill: lighten(@highlight,5); }
  [level=90]{ polygon-fill: lighten(@highlight,2); }
  [level=89]{ polygon-fill: lighten(@highlight,0); }
  [level=78]{ polygon-fill: darken(@shadow, 0); }
  [level=67]{ polygon-fill: darken(@shadow, 4); }
  [level=56]{ polygon-fill: darken(@shadow, 10); }
}

#landcover {
  //line-width: 0.5;
}

