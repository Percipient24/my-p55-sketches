class FancyArc {
  float radius;
  float opening;
  float travel;
  float travel_half;
  float open;
  float close;
  
  FancyArc(float r, float o, float op, float cl) {
    radius = r;
    opening = o;
    open = op;
    close = cl;
    travel = close - open;
    travel_half = travel / 2;
  }
  
  void render(float pos_sq) {
    if (pos_sq < open || pos_sq > close) {
      arc(0, 0, radius, radius, 0, TWO_PI);      
    } else {
      float perc = abs(((open + travel_half) - pos_sq) / travel_half);
      perc = 1 - (perc*perc);
      
      arc(0, 0, radius, radius, opening * perc, TWO_PI - (opening * perc));
    }
    
  }
}
