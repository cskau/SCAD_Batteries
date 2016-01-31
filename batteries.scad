// A set of rought reference models for a few common battery types.
// For reference: https://en.wikipedia.org/wiki/List_of_battery_sizes


// Increase 'number of fragments' for rounder models.
$fn = 60;



// 18650
height_18650 = 65.2; // mm
diameter_18650 = 18.6; // mm

module battery_18650(center=false) {
  cylinder(h=height_18650, d=diameter_18650, center=center);
}


// 18500
height_18500 = 49.8; // mm
diameter_18500 = 18.3; // mm

module battery_18500(center=false) {
  cylinder(h=height_18500, d=diameter_18500, center=center);
}


// 18350
height_18350 = 35; // mm
diameter_18350 = 18; // mm

module battery_18350(center=false) {
  cylinder(h=height_18350, d=diameter_18350, center=center);
}


// AA
height_AA = 50.5; // mm
diameter_AA = 14.5; // mm

module battery_AA(center=false) {
  cylinder(h=height_AA, d=diameter_AA, center=center);
}


// AAA
height_AAA = 44.5; // mm
diameter_AAA = 10.5; // mm

module battery_AAA(center=false) {
  cylinder(h=height_AAA, d=diameter_AAA, center=center);
}


// 9-volt
height_9v = 48.5; // mm
length_9v = 26.5; // mm
width_9v = 17.5; // mm

module battery_9v(center=false) {
  cube([length_9v, width_9v, height_9v], center=center);
}



// Examples

battery_18650(true);

translate([30, 0, 0])
  battery_AA(true);

translate([60, 0, 0])
  battery_AAA(true);

translate([90, 0, 0])
  battery_9v(true);

translate([120, 0, 0])
  battery_18500(true);

translate([150, 0, 0])
  battery_18350(true);
