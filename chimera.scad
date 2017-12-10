// @see https://www.trfastenings.com/Products/knowledgebase/Tables-Standards-Terminology/Tapping-Sizes-and-Clearance-Holes
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
    holeEdgeWidth = 34;
    solidEdgeLength = 30;
    holeEdgeScrewDistance = 24;
    solidEdgeScrewDistance = 18;
    
    firstHoleX = ((holeEdgeWidth - holeEdgeScrewDistance) / 2) / 2;
    firstHoleY = ((solidEdgeLength - solidEdgeScrewDistance) / 2) / 2;

    secondHoleX = firstHoleX + holeEdgeScrewDistance;
    secondHoleY = firstHoleY;

    thirdHoleX = firstHoleX;
    thirdHoleY = firstHoleY + solidEdgeScrewDistance;

    fourthHoleX = secondHoleX;
    fourthHoleY = thirdHoleY;
    
    translate([firstHoleX, firstHoleY, 0]) {
        SunkHoleM3(depth);
    }

    translate([secondHoleX, secondHoleY, 0]) {
        SunkHoleM3(depth);
    }

    translate([thirdHoleX, thirdHoleY, 0]) {
        SunkHoleM3(depth);
    }

    translate([fourthHoleX, fourthHoleY, 0]) {
        SunkHoleM3(depth);
    }


}

module BasePlate(topBearingGap, depth) {
    bearingWidth = 30;
    plateWidthExtra = 2;
    width = (bearingWidth * 2) + topBearingGap + (plateWidthExtra * 2);

    // TODO:  calculate!
    height = 40;
    difference() {
        cube([width, height, depth]);
        union() {
            // 2 bearings on top with their linear cylinders oriented horizontally
            translate([plateWidthExtra, plateWidthExtra, 0]) {
                translate([24, 0, 0]) {
                    rotate([0, 0, 90]) {
                        SCS8UU(depth);
                    }
                }
            }
            translate([plateWidthExtra + topBearingGap + bearingWidth, plateWidthExtra, 0]) {
                translate([24, 0, 0]) {
                    rotate([0, 0, 90]) {
                        SCS8UU(depth);
                    }
                }
            }
        }
    
    }
}

// cube([62,82,5]);

plateDepth = 5.2;

// The gap between the two bearings on the top of the base plate.
topBearingGap = 1;
//SCS8UU(depth);

BasePlate(topBearingGap, plateDepth);