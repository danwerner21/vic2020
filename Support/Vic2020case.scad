/* [Box dimensions] */
  Length        = 180;       
  Width         = 385;                     
  TopHeight        = 10;  
  BottomHeight     = 25;  
  SlopeHeight      = 20;
  Thick         = 3;


  
/* [Box options] */
  PCBFeet       = 1;// [0:No, 1:Yes]
  Vent          = 1;// [0:No, 1:Yes]
  Vent_width    = 1.5;   



  Filet         = 9;//[0.1:12] 
  Resolution    = 50;//[1:100] 
  m             = 0.9;
  
/* [PCB_Feet--the_board_will_not_be_exported) ] */
//All dimensions are from the center foot axis
PCBPosX         = 0;
PCBPosY         = 0;
PCBLength       = 125;
PCBWidth        = 358;
FootHeight      = 9;
FootDia         = 8;
FootHole        = 4.4;  
  

/* [STL element to export] */
  TShell        = 0;// [0:No, 1:Yes]
  BShell        = 1;// [0:No, 1:Yes]
  RLogo         = 0;// Logo
  Spacer         = 0;// keyboard Spacer


  
/* [Hidden] */
Couleur1        = "Orange";       
Couleur2        = "OrangeRed";    
Dec_Thick       = Vent ? Thick*2 : Thick; 
Dec_size        = Vent ? Thick*2 : 0.8;

PCBL=PCBLength;
PCBW=PCBWidth;

   
module SlopeRoundBox($a=Length, $b=Width, $c=TopHeight+BottomHeight){
                    $fn=Resolution;     
                         
                        translate([Filet,-Filet/2,Filet])
                        {  
                    minkowski ()
                    {  
              
                    translate([0,($b/2)+1,TopHeight])
                       rotate(a=[0,-90,90])
                          linear_extrude(height =(($b/2)-Filet/2)+1, center = false, convexity = 0, twist = 0)
                              polygon(points=[[0,0],[(SlopeHeight+TopHeight)*-1,0],[(SlopeHeight+TopHeight)*-1,-30],  [TopHeight*-1,($a-Filet*2)*-1],[0,($a-Filet*2)*-1]], paths=[[3,2,1,0]]);                      
                        
                     rotate([270,0,0]){    
                        cylinder(r=Filet,h=Width/2+1, center = false);
                            } 
                        }
                    }
                }// End of RoundBox Module                


module RoundBox($a=Length, $b=Width, $c=TopHeight+BottomHeight){
                    $fn=Resolution;            
                    translate([0,Filet,Filet]){  
                    minkowski (){                                              
                        cube ([$a-(Length/2),$b-(2*Filet),$c-(2*Filet)], center = false);
                        rotate([0,90,0]){   
                           translate([0,0,Filet]){  
                        cylinder(r=Filet,h=Length/2-(2*Filet), center = false);}
                            } 
                        rotate([270,0,0]){    
                        cylinder(r=Filet,h=.1, center = false);
                            } 
                        }
                    }
                }// End of RoundBox Module



module TopShell(){
    Thick = Thick*2;  
    difference(){    
        difference(){
            union(){    
                     difference() {
                      
                        difference(){
                            union() {
                                        KeyboardCutoutReinforcement();

                            difference(){
                                SlopeRoundBox();
                                translate([Thick/2,Thick/2,Thick/2]){     
                                        SlopeRoundBox($a=Length-Thick*2, $b=Width-Thick*2, $c=TopHeight+BottomHeight-Thick);
                                        }
                                        }
                                    }
                               translate([-Thick,-Thick,TopHeight]){
                                   cube ([Length+100, Width+100, TopHeight+BottomHeight], center=false);
                                            }                                            
                                      }
                                }                                          

                difference(){
                    union(){
                        translate([3*Thick +5,Thick,TopHeight]){
                            rotate([90,0,0]){
                                    $fn=6;
                                    cylinder(d=16,Thick/2);
                                    }   
                            }
                            
                       translate([Length-((3*Thick)+5),Thick,TopHeight]){
                            rotate([90,0,0]){
                                    $fn=6;
                                    cylinder(d=16,Thick/2);
                                    }   
                            }

                    translate([3*Thick +5,Width-Thick/2-2.4,TopHeight]){
                            rotate([90,0,0]){
                                    $fn=6;
                                    cylinder(d=16,Thick/2);
                                    }   
                            }
                            
                       translate([Length-((3*Thick)+5),Width-Thick/2-2.4,TopHeight]){
                            rotate([90,0,0]){
                                    $fn=6;
                                    cylinder(d=16,Thick/2);
                                    }   
                            }


                        }
                            
                    } 
                    
                    
            }

       }


///Put Difference Keyboard Cutout Here

            union(){ //sides holes
                $fn=50;
                translate([3*Thick+5,20,TopHeight+4]){
                    rotate([90,0,0]){
                    cylinder(d=2,20);
                    }
                }
                translate([Length-((3*Thick)+5),20,TopHeight+4]){
                    rotate([90,0,0]){
                    cylinder(d=2,20);
                    }
                }
                translate([3*Thick+5,Width+5,TopHeight+4]){
                    rotate([90,0,0]){
                    cylinder(d=2,20);
                    }
                }
                translate([Length-((3*Thick)+5),Width+5,TopHeight+4]){
                    rotate([90,0,0]){
                    cylinder(d=2,20);
                    }
                }
            }

         // IEC Opening    
            translate([-1,(Thick)+243.8,Thick-3]){
              cube([21,21,BottomHeight-7]);
            }   


        KeyboardCutout();

        }
        KeyboardFeet();
        
       

}





module BottomShell(){
    Thick = Thick*2;  
    translate([0,2,0]){
    
    difference(){    
        difference(){
            //Main Box
            union(){    
                     difference() {
                      
                        difference(){
                            union() {
                            difference(){
                                RoundBox($a=Length, $b=Width-2, $c=TopHeight+BottomHeight);
                                translate([Thick/2,Thick/2,Thick/2]){     
                                        RoundBox($a=Length-Thick, $b=Width-Thick-2, $c=TopHeight+BottomHeight-Thick);
                                        }
                                        }

                                    }
                               translate([-Thick,-Thick,BottomHeight]){
                                   cube ([Length+100, Width+100, TopHeight+BottomHeight], center=false);
                                            }                                            
                                      }
                                }                                          


              
            }

       
            // vent holes
            union(){           
            for(i=[0:Thick:Length/4]){
                    translate([10+i,-Dec_Thick+Dec_size,1]){
                    cube([Vent_width,Dec_Thick,BottomHeight/2]);
                    }
                    translate([(Length-10) - i,-Dec_Thick+Dec_size,1]){
                    cube([Vent_width,Dec_Thick,BottomHeight/2]);
                    }
               
                  }
                }
                
        
            // Joystick Opening    
            translate([79,Width-Dec_size-2,Thick+4]){    
              cube([35,Dec_Thick+2,BottomHeight-5]);
            }
                

            // Power Opening    
            translate([-1,(Thick)+13.6,Thick+4]){
              cube([12,13,BottomHeight-11]);
            }   

            // Audio Opening    
            translate([-1,(Thick)+33.7,Thick+4]){
              cube([12,13,BottomHeight-11]);
            }   

            // Video Opening    
            translate([-1,(Thick)+55.5,Thick+4]){
              cube([12,13,BottomHeight-11]);
            }   

            // S-Video Opening    
          //  translate([-1,(Thick)+78.5,Thick+4]){
         //     cube([15,16,BottomHeight-9]);
         //   }   

            // IEC Opening    
            translate([-1,(Thick)+106.2,Thick+4]){
              cube([21,21,BottomHeight-7]);
            }   

        
    
            // Glamour Line
        
            translate([Length-1,0,BottomHeight-1.25]){
             cube([20,Width,20]);
                }               
            translate([0,0,BottomHeight-1.25]){
             cube([1,Width,20]);
                }
             translate([0,0,BottomHeight-1.25]){    
              cube([Length,1,5]);
            }  
             translate([0,Width-3,BottomHeight-1.25]){    
              cube([Length,20,5]);
            }  
           
                
            }


            union(){ //sides holes
                $fn=50;
                translate([3*Thick+5,20,BottomHeight-4]){
                    rotate([90,0,0]){
                    cylinder(d=2,20);
                    }
                }
                translate([Length-((3*Thick)+5),20,BottomHeight-4]){
                    rotate([90,0,0]){
                    cylinder(d=2,20);
                    }
                }
                translate([3*Thick+5,Width+5,BottomHeight-4]){
                    rotate([90,0,0]){
                    cylinder(d=2,20);
                    }
                }
                translate([Length-((3*Thick)+5),Width+5,BottomHeight-4]){
                   rotate([90,0,0]){
                    cylinder(d=2,20);
                    }
                }
            }
        }
        }
}



module foot(FootDia,FootHole,FootHeight){
    Filet=2;
    color("Orange")   
    translate([0,0,Filet-1.5])
    difference(){
    
    difference(){
         
                cylinder(d=FootDia+Filet,FootHeight-Thick, $fn=100);
                    rotate_extrude($fn=100){
                            translate([(FootDia+Filet*2)/2,Filet,0]){
                                    minkowski(){
                                            square(10);
                                            circle(Filet, $fn=100);
                                        }
                                 }
                           }
                   }
            cylinder(d=FootHole,FootHeight+1, $fn=100);
               }          
}


module KeyboardCutout()
{
      color("OrangeRed"){
        translate([70,Width-20,-20])
          {
                       rotate(a=[8,0,270])
           { 
                          linear_extrude(height =12, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[-1,2],[308,2],[308,19],[327,19],[327,42],[289,42],[289,59],[327,59],[327,81],[194,81],[194,100],[72,100],[72,81],[27,81],[27,100],[-1,100]], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]]);        
               
                          linear_extrude(height =12, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[37.5,-26],[117.5,-26],[117.5,-4],[37.5,-4]], paths=[[0,1,2,3]]);        
               }
                            
               //Cartridge slot
               rotate(a=[0,0,270])
                            linear_extrude(height =12, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[216,-60],[359,-60],[359,-37],[216,-37]], paths=[[0,1,2,3]]);  
               //LED OPENING
                 rotate(a=[0,0,270])
                            linear_extrude(height =12, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[7,-50],[17.1,-50],[17.1,-52.1],[7,-52.1]], paths=[[0,1,2,3]]);  
               }              
        }
    }

module KeyboardCutoutReinforcement()
{
      color("OrangeRed"){
        translate([70,Width-20,-14])
          {
                       rotate(a=[8,0,270])
           { 
                          linear_extrude(height =5, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[-3,0],[310,0],[310,17],[329,17],[329,44],[291,44],[291,57],[329,57],[329,83],[196,83],[196,102],[69,102],[69,83],[29,83],[29,102],[-3,102]], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]]);        
               
                          linear_extrude(height =5, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[35.5,-28],[119.5,-28],[119.5,-2],[35.5,-2]], paths=[[0,1,2,3]]);        
           }
           translate([0,0,-4])
           rotate(a=[0,0,270])
                            linear_extrude(height =5, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[214,-62],[361,-62],[361,-35],[214,-35]], paths=[[0,1,2,3]]);        
               
               
                            }              
        }
    }


module KeyboardFeet()
{
     color("OrangeRed"){
        translate([70,Width-20,-15])
          {
                       rotate(a=[8,0,270])
           { 
               
               translate([3*Thick-9.5,Thick-21.428,Thick/2]){foot(FootDia,FootHole,FootHeight);}
               translate([3*Thick+125.5,Thick-21.428,Thick/2]){foot(FootDia,FootHole,FootHeight);}
               translate([3*Thick+201.393,Thick-13,Thick/2]){foot(FootDia,FootHole,FootHeight);}
               // do not use translate([3*Thick-1.5,Thick+88.608,Thick/2]){foot(FootDia,FootHole,FootHeight-1);}
               translate([3*Thick+192.938,Thick+88.608,Thick/2]){foot(FootDia,FootHole,FootHeight);}
               translate([3*Thick+260.475,Thick+88.608,Thick/2]){foot(FootDia,FootHole,FootHeight);}
               translate([3*Thick+320.671,Thick+88.608,Thick/2]){foot(FootDia,FootHole,FootHeight);}
               translate([3*Thick+320.371,Thick,Thick/2]){foot(FootDia,FootHole,FootHeight  );}
               
               }
                            }              
        }
    }


  
module BottomFeet(){     
//////////////////// - PCB only visible in the preview mode - /////////////////////    
    translate([3*Thick+2,Thick+5,FootHeight+(Thick/2)-0.5]){
    
    %square ([PCBL+10,PCBW+10]);
       translate([PCBL/2,PCBW/2,0.5]){ 
        color("Olive")
        %text("PCB", halign="center", valign="center", font="Arial black");
       }
    } 


//top LEFT
    translate([(3*Thick)+2+2.2,(Thick)+PCBW+5-351.9,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        

    translate([(3*Thick)+2+2.2,(Thick)+PCBW+5-217.3,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        

//top right       
            translate([3*Thick+2+7.5,(Thick)+PCBW+5-9.7,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
            }
        translate([3*Thick+2+7.5,(Thick)+PCBW+5-109.4,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }

        translate([3*Thick+2+10.8,(Thick)+PCBW+5-140.5,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }
    translate([(3*Thick)+2+25.3,(Thick)+PCBW+5-22.7,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        



//bottom LEFT
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+5-351.8,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        


    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+5-305.2,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        



    //bottom right
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+5-22.7,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+5-81.5,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+5-149.2,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+5-6.4,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        

 

}

module Logo()
{
    
    
union() {
scale([.1,.1, .1])
rotate([0,0,90])
    linear_extrude(height =30, center = false, convexity = 0, twist = 0)
               import(file = "n:/Projects/vic2020/Support/viclogo.svg", center = true);    
    translate([-10,-25,0])
     cube([20,50,1.5]);
}
    
}






///////////////////////////////////// - Main - ///////////////////////////////////////



if(BShell==1)
{
    color(Couleur1){ 
        BottomShell();
    }
    if (PCBFeet==1)
    // Feet
    translate([PCBPosX,PCBPosY,0]){ 
    BottomFeet();
    }
}



if(TShell==1)
{
    color( Couleur1,1){
        translate([0,Width,TopHeight+BottomHeight+0.2]){
            rotate([0,180,180]){
                TopShell();
            }
        }
    }
 
}

if(RLogo==1)
{
    color( Couleur2,1){
        translate([-30,-30,0]){
            Logo();
        }
    }
} 

if(Spacer==1)
{    
    
    color( Couleur2,1){
        translate([-60,-50,0]){
                              linear_extrude(height =25, center = false, convexity = 0, twist = 0)
                              polygon(points=[[0,0],[10,0],[10,10],[0,10]], paths=[[3,2,1,0]]);         
        }
}    
}



