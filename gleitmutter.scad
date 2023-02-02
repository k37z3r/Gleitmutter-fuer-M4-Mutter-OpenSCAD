/*
Gleitmutter-fuer-M4-Mutter-OpenSCAD by Sven Reddemann is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
Based on a work at https://github.com/k37z3r/Gleitmutter-fuer-M4-Mutter-OpenSCAD.
*/
module gleitmutter(rsize){
    difference(){
        resize(newsize=[5.7,9.8,12]) linear_extrude(height = 10, center = true, convexity = 10, twist = 0) polygon([[3.5, -3], [0.8, -5], [-1, -5], [-1, -3], [-2.5, -3], [-2.5, 3], [-1, 3], [-1, 5], [0.8, 5], [3.5, 3]]);
        rotate([0,90,0]) cylinder(h=30, r=2.2, center=true, $fn=100);
        translate([1.64,0,0]) rotate([0,90,0]) cylinder(h=4, r=rsize, center=true, $fn=6);
        translate([2, 0, 5.6]) linear_extrude(height = 4) rotate([0,0,90]) text("M4", halign = "center", size=3);
    }
    translate([2.82, -1.2, -3.2]) rotate([150,0,0]) cube([0.5,0.5,1]);
}
for(a = [0:1:4]){
    for(b = [0:1:4]){
        translate([b*8,a*12,0]) gleitmutter(4.3);
        translate([0,b*12-0.5,-6]) cube([30,1,0.3]);
    }
    translate([a*8-0.5,0,-6]) cube([1,50,0.3]);
}
