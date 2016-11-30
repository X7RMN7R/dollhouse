module door() {
    cube([30,100,320]);
}

module window() {
    cube([30,130,130]);
}

module stairs_hole() {
    cube([80,80,30]);
}

// Fond 1m20 x 1m20 x 1cm
cube([1200,10,1200]);
// Mur Gauche 1m20 x 40cm x 1cm
// devant le fond
difference() {
    translate([1190,0,0]) {
      cube([10,400,1200]);
    }
    union() {
        // Porte 32cm x 10cm 
        // située à 10cm du devant et à 1cm du sol
        translate([1189,200,10]) door();
        // Fenêtre
        translate([1189,170,610]) window();
        // Fenêtre
        translate([1189,170,1020]) window();
    }
}
// Rez de chaussée 1m20 x 40cm x 1cm
// positionné devant le fond (dépasse d'1cm à droite)
translate([-10,10,0]) {
  cube([1200,400,10]);
}
// 1er étage 1m20 x 40cm x 1cm
// positionné devant le fond (dépasse d'1cm à droite)
// à 40cm au-dessus du RdC (à 41cm du bas du fond)
difference() {
    translate([-10,10,410]) {
      cube([1200,400,10]);
    }
    translate([15,50,400]) stairs_hole();
}

// 2ème étage 1m20 x 40cm x 1cm
// positionné devant le fond (dépasse d'1cm à droite)
// à 40cm au-dessus du 1er (à 82cm du bas du fond)
difference() {
    translate([-10,10,820]) {
      cube([1200,400,10]);
    }
    translate([15,50,810]) stairs_hole();
}    

// Terrasse 80cm x 40cm x 1cm
// positionnée devant le fond, collée au mur de gauche
// à 1m19 du bas du fond
translate([390,10,1190]) {
  cube([800,400,10]);
}
// Parapet 15cm de haut
translate([396,10,1190]) {
  cube([800,6,150]);
}
translate([390,60,1190]) {
  cube([6,350,150]);
}
translate([396,404,1190]) {
  cube([800,6,150]);
}
translate([1196,10,1190]) {
  cube([6,400,150]);
}
// Escalier Terrasse
for (i=[0:12])
    translate([370 - 20*i,10,1175 - 15*i]) {
        cube([30,50,15]);
    }
translate([100,10,980]) {
    cube([60,50,15]);
}
for (i=[0:10])
    translate([100,50 + 20*i,980 - 15*i]) {
        cube([50,30,15]);
    }

// Mur de droite Rez de chaussée 40cm x 40cm x 1cm
difference() {
    translate([130,0,10]) {
      cube([10,400,400]);
    }
    translate([120,200,10]) door();
}
// Mur de droite 1er étage 40cm x 40cm x 1cm
difference() {
    translate([130,0,420]) {
      cube([10,400,400]);
    }   
    translate([120,200,420]) door();
}
// Mur de droite 2eme étage 40cm x 36cm x 1cm
difference() {
    translate([400,0,830]) {
      cube([6,400,360]);
    }
    translate([394,100,830]) door();
}
// Cloison Rez de chaussée 40cm x 40cm x 6mm
difference() {
    translate([600,0,10]) {
      cube([6,400,400]);
    }
    translate([594,270,10]) door();
}
// Cloison 1er étage 40cm x 40cm x 6mm
difference() {
    translate([700,0,420]) {
        cube([6,400,400]);
    }
    translate([694,270,420]) door();
}
