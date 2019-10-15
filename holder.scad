$fn=60;
difference() {
	union() {
		// Form the base
		hull() {
			cylinder(h=3, r=5);
			translate([50, 0, 0])
			cylinder(h=3, r=5);
			translate([0, 50, 0])
			cylinder(h=3, r=5);
			translate([50, 50, 0])
			cylinder(h=3, r=5);
			}
		// Form the stepped "stage"
		translate([10, 10, 2.9])
		hull() {
			cylinder(h=3, r=5);
			translate([30, 0, 0])
			cylinder(h=3, r=5);
			translate([0, 30, 0])
			cylinder(h=3, r=5);
			translate([30, 30, 0])
			cylinder(h=3, r=5);
		}
	}
	union() {
	translate([25, 25, 13]) {
		// Hole for the keycap seat
		cube([18.05, 18.05, 20], center=true);
		translate([0, 0, -10])
		// Center hole
		cylinder(r=3, h=20, center=true);
	}
	// Corner relief for keycap
	translate([16.05, 16.05, 3]) {
		cylinder(h=3, r=3);
		translate([18.05, 0, 0])
		cylinder(h=3, r=3);
		translate([0, 18.05, 0])
		cylinder(h=3, r=3);
		translate([18.05, 18.05, 0])
		cylinder(h=3, r=3);
		}
	}
}
