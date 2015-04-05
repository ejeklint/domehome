use <leg.scad>;

$fn = 50;

module legs() {
    rotate([-18,0,0]) leg();
    rotate([-15.86,0,60]) leg("A");
    rotate([-18,0,120]) leg();
    rotate([-18,0,180]) leg();
}

module holes() {
    rotate([-18,0,0]) hole();
    rotate([-15.86,0,60]) hole();
    rotate([-18,0,120]) hole();
    rotate([-18,0,180]) hole();
}

module part() {
    difference() {
        legs();
        holes();
    }
}

part();

