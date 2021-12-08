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
  //ヘリコプターの足の部分(前)
  object{
    Round_Box_Union(<-2,-1.1,-1>, <-2.2,-1.7,-1.2>, .2)
    texture { T_Wood7 }
    translate<0,0.6,-0.3>
    scale<0.5,1,0.5>
  }
  //ヘリコプターの足の部分(後ろ)
  object{
    Round_Box_Union(<-0.8,-1.2,-1>, <-1,-1.8,-1.2>, .2)
    texture { T_Wood7 }
    translate<0,0.6,-0.3>
    scale<0.5,1,0.5>
  }  
  //プロペラと胴体をつなぐ部分
  object{
    cylinder{<0, 0, 0>, <0, 1,0>, 0.5}
    translate<-0.6,0,-0.3>
    texture { T_Wood7 }
  }
　//プロペラと胴体をつなぐ部分
  object{
    cylinder{<0, 0, 0>, <0, 1.7,0>, 0.1}
    translate<-0.6,0,-0.3>
    texture { T_Wood7 }
  }
}

//後ろの部分
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

//胴体
object {
  Sphere
  texture { T_Wood7 }
  translate<-0.5,-10,-2.7>
  scale<1.4,0.1,0.3>  
  rotate <-10, -3, -1>
}
//プロペラ1
object{
  Sphere
  texture { T_Wood7 }
  translate<0.2,15,-3>
  scale<2.5,0.1,0.2>  
  rotate<0,90,0>
}
//プロペラ2
object{
  Sphere
  texture { T_Wood7 }
  translate<-0.2,15,-1>
  scale<2.5,0.1,0.2>  
}
		

