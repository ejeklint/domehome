use <leg.scad>;

$fn = 50;

module legs() {
    rotate([-15.86,0,0]) leg("A");
    rotate([-15.86,0,72]) leg("A");
    rotate([-15.86,0,144]) leg("A");
    rotate([-15.86,0,216]) leg("A");
    rotate([-15.86,8,288]) leg("A");
}

module holes() {
    rotate([-15.86,0,0]) hole();
    rotate([-15.86,0,72]) hole();
    rotate([-15.86,0,144]) hole();
    rotate([-15.86,0,216]) hole();
    rotate([-15.86,8,288]) hole();
}

module part() {
    difference() {
        legs();
        holes();
    }
}

part();
