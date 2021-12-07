#include"colors.inc"
#include"shapes.inc" 
#include"shapes2.inc"
#include "stones.inc"
#include "woods.inc"

camera {
  location <-10,5,-15>//-5,5,-10//-5,10,-10
  look_at <0,-0.2,0>
  angle 20
}                         
    
light_source { <0,5,-10> color White }



union{
      object{
    Round_Box_Union(<2.3,0,0.5>, <0.2,-0.4,-0.1>, .2)
    texture { T_Wood7 }
    translate<0,0.2,-0.5>
    }
    object {
  Sphere
    texture { T_Wood7 }
    translate<-0.5,0,-0.3>
    scale<1.4,0.8,1>  
    } 
    //mae-ashi
    object{
    Round_Box_Union(<-2,-1.1,-1>, <-2.2,-1.7,-1.2>, .2)
    texture { T_Wood7 }
    translate<0,0.6,-0.3>
    scale<0.5,1,0.5>
    }
    //ushiro-ashi
    object{
    Round_Box_Union(<-0.8,-1.2,-1>, <-1,-1.8,-1.2>, .2)
    texture { T_Wood7 }
    translate<0,0.6,-0.3>
    scale<0.5,1,0.5>
    }
    
   //ue
   object{cylinder{<0, 0, 0>, <0, 1,0>, 0.5}
	translate<-0.6,0,-0.3>
	texture { T_Wood7 }
	}
	//ue2
   object{cylinder{<0, 0, 0>, <0, 1.7,0>, 0.1}
	translate<-0.6,0,-0.3>
	texture { T_Wood7 }
	}
}
//ushiro-hane
difference{
	object{
		Sphere
    texture { T_Wood7 }
    scale<0.5,0.1,1>
    translate<1.6,0.3,0>  
    } 
    object{Plane_XY}
    rotate<-90,0,0>
}
//dodai
object {
  Sphere
    texture { T_Wood7 }
    translate<-0.5,-10,-2.7>
    scale<1.4,0.1,0.3>  
    rotate <-10, -3, -1>
   }
   //puropera
object{
	Sphere
    texture { T_Wood7 }
    translate<0.2,15,-3>
    scale<2.5,0.1,0.2>  
    rotate<0,90,0>
}
   //puropera2
object{
	Sphere
    texture { T_Wood7 }
    translate<-0.2,15,-1>
    scale<2.5,0.1,0.2>  
}
		

