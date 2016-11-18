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
        translate([1189,200,10]) {
          cube([30,100,320]);
        }
        // Fenêtre 15cm x 15cm 
        // à 10cm du devant
        // à 54cm du bas
        translate([1189,150,550]) {
          cube([30,150,150]);
        }
        // Fenêtre 15cm x 15cm 
        // à 10cm du devant
        // à 94cm du bas
        translate([1189,150,950]) {
          cube([30,150,150]);
        }
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
translate([-10,10,410]) {
  cube([1200,400,10]);
}
// 2ème étage 1m20 x 40cm x 1cm
// positionné devant le fond (dépasse d'1cm à droite)
// à 40cm au-dessus du 1er (à 82cm du bas du fond)
translate([-10,10,820]) {
  cube([1200,400,10]);
}
// Terrasse 97cm x 40cm x 1cm
// positionnée devant le fond, collée au mur de gauche
// à 1m19 du bas du fond
translate([220,10,1190]) {
  cube([970,400,10]);
}
// Parapet 15cm de haut
translate([226,10,1190]) {
  cube([970,6,150]);
}
translate([220,60,1190]) {
  cube([6,350,150]);
}
translate([226,404,1190]) {
  cube([970,6,150]);
}
translate([1196,10,1190]) {
  cube([6,400,150]);
}
// Escalier Terrasse - Haut
translate([200,10,1175]) {
  cube([30,50,15]);
}
translate([180,10,1160]) {
  cube([30,50,15]);
}
translate([160,10,1145]) {
  cube([30,50,15]);
}
translate([140,10,1130]) {
  cube([30,50,15]);
}
translate([120,10,1115]) {
  cube([30,50,15]);
}
translate([100,10,1100]) {
  cube([30,50,15]);
}
translate([80,10,1085]) {
  cube([30,50,15]);
}
translate([60,10,1070]) {
  cube([30,50,15]);
}
translate([40,10,1055]) {
  cube([30,50,15]);
}
translate([0,10,1040]) {
  cube([50,50,15]);
}
// Escalier Terrasse - Bas
translate([0,50,1025]) {
  cube([50,30,15]);
}
translate([0,70,1010]) {
  cube([50,30,15]);
}
translate([0,90,995]) {
  cube([50,30,15]);
}
translate([0,110,980]) {
  cube([50,30,15]);
}
translate([0,130,965]) {
  cube([50,30,15]);
}
translate([0,150,950]) {
  cube([50,30,15]);
}
translate([0,170,935]) {
  cube([50,30,15]);
}
translate([0,190,920]) {
  cube([50,30,15]);
}
translate([0,210,905]) {
  cube([50,30,15]);
}
translate([0,230,890]) {
  cube([50,30,15]);
}
translate([0,250,875]) {
  cube([50,30,15]);
}
translate([0,270,860]) {
  cube([50,30,15]);
}
translate([0,290,845]) {
  cube([50,30,15]);
}
translate([0,310,830]) {
  cube([50,30,15]);
}
// Mur de droite Rez de chaussée 40cm x 40cm x 1cm
difference() {
    translate([100,0,10]) {
      cube([10,400,400]);
    }
    translate([90,200,10]) {
      cube([30,100,320]);
    }
}
// Mur de droite 1er étage 40cm x 40cm x 1cm
difference() {
    translate([100,0,420]) {
      cube([10,400,400]);
    }   
    translate([90,200,420]) {
      cube([30,100,320]);
    }
}
// Mur de droite 2eme étage 40cm x 36cm x 1cm
difference() {
    translate([400,0,830]) {
      cube([6,400,360]);
    }
    translate([394,200,830]) {
      cube([18,100,320]);
    }
}
// Cloison Rez de chaussée 40cm x 40cm x 6mm
difference() {
    translate([600,0,10]) {
      cube([6,400,400]);
    }
    translate([594,200,10]) {
      cube([18,100,320]);
    }
}
// Cloison 1er étage 40cm x 40cm x 6mm
difference() {
    translate([700,0,420]) {
        cube([6,400,400]);
    }
    translate([694,200,420]) {
      cube([18,100,320]);
    }
}
