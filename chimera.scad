m3Clearance = 3.4;

module SunkHoleM3(depth) {
    screwHoleTolerance = 0.2;
    holeFragments = 25;
    screwHoleRadius = (m3Clearance + screwHoleTolerance * 2) / 2;
    screwHeadDepth = 2.2;
    m3screwHeadClearanceRadius = 6 / 2;
    translate([0, 0, depth]) {
        rotate([180,0,0]) {
            union() {
                cylinder(depth, screwHoleRadius, screwHoleRadius, $fn=holeFragments);
                cylinder(screwHeadDepth, m3screwHeadClearanceRadius, m3screwHeadClearanceRadius, $fn=holeFragments);
            }
        }
    }
    
    
    
    
}

module SCS8UU(depth) {
    width = 34;
    length = 30;
    xGap = 24;
    yGap = 18;
    
    
    SunkHoleM3(depth);

}

// cube([62,82,5]);

depth = 5.2;
SCS8UU(depth);