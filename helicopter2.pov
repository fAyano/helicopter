#include "colors.inc"
#include "shapes.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes2.inc"
//#include "komuro.inc"
#include "skies.inc"
 #include "glass.inc"
 #include "textures.inc"




camera {
  location <-10,5,-25>//-5,5,-10//-5,10,-10
  look_at <1.5,0.2,0>
  angle 20
}                         
    
light_source { <0,5,-10> color White }

sky_sphere{S_Cloud2}


//object { XYZaxis }

//——-body——-
//main_body
union{
difference{
object{
	Sphere
    pigment{color Red}
    scale<1.8,0.8,1>  
    translate<0.3,0,0>
}
object{Plane_YZ}
}
union{
difference{
	object{
    Sphere
    pigment{color Red}
    scale<1.8,0.8,1>  
    translate<-0.3,0,0>
	}
	object{Plane_YZ}
	object{Plane_XZ}
}
rotate<180,180,0>
}
//窓
union{
difference{
	object{
    Sphere
    material{M_Dark_Green_Glass}
    scale<1.8,0.8,1>  
    translate<-0.3,0,0>
	}
	object{Plane_YZ}
	object{Plane_XZ}
}
rotate<0,180,0>
}
//黒い部分
object{
    Round_Box_Union(<4,0,0.2>, <1,-0.4,-0.2>, .2)
     pigment{color Red}
    translate<0,0.3,0>
    scale<1.2,0,0>
}

//——プロペラ——
//base
object{cylinder{<0, 0, 0>, <0, 1,0>, 0.5}
	translate<0.3,1,0>
	pigment{color Gray15}
	scale<0.8,0.5,0.8>
	}
//pole
 object{cylinder{<0, 0, 0>, <0, 1.5,0>, 0.1}
 	scale<0,0.5,0>
	translate<0.2,1,0>
	pigment{color Gray15}	
 }
//main_wings
object{
	Sphere
   pigment{color Gray15}
   scale<4,0.1,0.2>  
   translate<0,1.5,0.3>
    rotate<0,90,0>
}
object{
	Sphere
   pigment{color Gray15}
   scale<4,0.1,0.2>  
   translate<0.4,1.5,0>
}
//back
difference{
	object{
		Sphere
    pigment{color Red}
    scale<0.5,0.1,1.2>
    translate<1.5,0,0>  
    } 
    object{Plane_XY}
    rotate<-90,0,0>
    translate<2.5,0.1,0>
}

//——leg——-
#declare LEG=
union{
object{cylinder{<0, 0, 0>, <0, 1.5,0>, 0.1}
 	scale<0,0.5,0>
	translate<-0.2,-1.5,0>
	pigment{color Gray15}	
}
object{cylinder{<0, 0, 0>, <0, 1.5,0>, 0.1}
 	scale<0,0.5,0>
	translate<0.7,-1.5,0>
	pigment{color Gray15}	
}
object {
  Sphere
   pigment{color Gray15}	
   translate<0.2,-15,0>
    scale<1.4,0.1,0.2>    
    }
}

object{
	LEG
	translate<0,-0.1,0.2>
	scale<0.8,0.8,0.8>
}
object{
	LEG
	translate<0,-0.1,-0.2>
	scale<0.8,0.8,0.8>

}
    rotate<0,-15,0>
    translate<2,-1.5,0>
    scale<1.1,1.1,1.1>   
}


//——string——
//文字を入れる
//pngファイルを読み込み、出力する
difference{
object{
	height_field{png"nihongo.png"}
	texture{T_Stone43}
  }
  object{
  	Plane_XZ
  	translate<0,0.2,0>
  }
  scale<10,0.5,10>
  rotate<-90,0,0>
  translate<-4,-3.5,0>
}


