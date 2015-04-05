use <leg.scad>;

$fn = 50;

module legs() {
    rotate([-18,0,0]) leg("B");
    rotate([-18,0,60]) leg("B");
    rotate([-15.86,0,120]) leg("A");
    rotate([-18,0,180]) leg("B");
    rotate([-18,8,240]) leg("B");
    rotate([-15.86,0,300]) leg("A");
}

module holes() {
    rotate([-18,0,0]) hole();
    rotate([-18,0,60]) hole();
    rotate([-15.86,0,120]) hole();
    rotate([-18,0,180]) hole();
    rotate([-18,8,240]) hole();
    rotate([-15.86,0,300]) hole();
}

module part() {
    difference() {
        legs();
        holes();
    }
}

part();
