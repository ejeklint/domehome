tubeOuterRadius = 10;
tubeInnerRadius = 8.35;
wallThickness = 3;
insideHole = tubeInnerRadius - wallThickness;

$fn = 50;

module leg(char) {
     rotate([-90,0,0]) {
        difference() {
            union() {
                sphere(r=tubeOuterRadius);
                cylinder(r=tubeOuterRadius, h=20);
                translate([0,0,20]) cylinder(r1 = tubeInnerRadius - 1, r2 = tubeInnerRadius, h = 4);
                translate([0,0,24]) cylinder(r = tubeInnerRadius, h = 15);
                translate([0,0,39]) cylinder(r1 = tubeInnerRadius, r2 = tubeInnerRadius-1, h = 1);
            }
            translate([-1,-10,20]) cube([2,20,21]);
            translate([-5,-9,20]) cube([20,2,21]);
            translate([-5,7,20]) cube([20,2,21]);
            if (char == "A") {
                translate([0,-10,15]) sphere(r=1);
            }
        }
    }
}

module hole() {
    rotate([-90,0,0]) union() {
        sphere(r = insideHole);
        cylinder(r = insideHole, h=41);
    }
}

leg("A");
