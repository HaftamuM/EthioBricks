// EthioBricks Heritage Building System (EHB-10) prototype
// 2x2 test brick — engineering prototype only, NOT certified as a children's toy.
$fn = 64;
module brick_2x2() {
    pitch = 10;
    w = 20;
    d = 20;
    h = 12;
    wall = 1.6;
    stud_d = 6.2;
    stud_h = 2.4;

    difference() {
        // Main shell
        cube([w,d,h], center=false);
        // Bottom cavity: leaves side walls and top
        translate([wall,wall,-0.01])
            cube([w-2*wall,d-2*wall,h-2.0], center=false);
    }
    // Four top studs
    for (x=[pitch/2, 3*pitch/2])
        for (y=[pitch/2, 3*pitch/2])
            translate([x,y,h])
                cylinder(d=stud_d,h=stud_h);
}
brick_2x2();
