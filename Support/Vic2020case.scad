
/*//////////////////////////////////////////////////////////////////
              -    FB Aka Heartman/Hearty 2016     -                   
              -   http://heartygfx.blogspot.com    -                  
              -       OpenScad Parametric Box      -                     
              -         CC BY-NC 3.0 License       -                      
////////////////////////////////////////////////////////////////////                                                                                                             
12/02/2016 - Fixed minor bug 
28/02/2016 - Added holes ventilation option                    
09/03/2016 - Added PCB feet support, fixed the shell artefact on export mode. 

*/////////////////////////// - Info - //////////////////////////////

// All coordinates are starting as integrated circuit pins.
// From the top view :

//   CoordD           <---       CoordC
//                                 ^
//                                 ^
//                                 ^
//   CoordA           --->       CoordB


////////////////////////////////////////////////////////////////////


////////// - Paramètres de la boite - Box parameters - /////////////

/* [Box dimensions] */
// - Longueur - Length  
  Length        = 150;       
// - Largeur - Width
  Width         = 380;                     
// - Hauteur - Height  
  TopHeight        = 10;  
  BottomHeight     = 25;  
  SlopeHeight      = 20;
// - Epaisseur - Wall thickness  
  Thick         = 3;//[2:5]  


  
/* [Box options] */
// Pieds PCB - PCB feet (x4) 
  PCBFeet       = 1;// [0:No, 1:Yes]
// - Decorations to ventilation holes
  Vent          = 1;// [0:No, 1:Yes]
// - Decoration-Holes width (in mm)
  Vent_width    = 1.5;   



// - Diamètre Coin arrondi - Filet diameter  
  Filet         = 6;//[0.1:12] 
// - lissage de l'arrondi - Filet smoothness  
  Resolution    = 50;//[1:100] 
// - Tolérance - Tolerance (Panel/rails gap)
  m             = 0.9;
  
/* [PCB_Feet--the_board_will_not_be_exported) ] */
//All dimensions are from the center foot axis
// - Coin bas gauche - Low left corner X position
PCBPosX         = 0;
// - Coin bas gauche - Low left corner Y position
PCBPosY         = 0;
// - Longueur PCB - PCB Length
PCBLength       = 125;
// - Largeur PCB - PCB Width
PCBWidth        = 358;
// - Heuteur pied - Feet height
FootHeight      = 9;
// - Diamètre pied - Foot diameter
FootDia         = 8;
// - Diamètre trou - Hole diameter
FootHole        = 3;  
  

/* [STL element to export] */
//Top shell
  TShell        = 1;// [0:No, 1:Yes]
//Bottom shell
  BShell        = 1;// [0:No, 1:Yes]
//Back panel  
  BPanel        = 0;// [0:No, 1:Yes]
//Front panel
  FPanel        = 0;// [0:No, 1:Yes]
  
  RLogo         = 1;// Logo


  
/* [Hidden] */
// - Couleur coque - Shell color  
Couleur1        = "Orange";       
// - Couleur panneaux - Panels color    
Couleur2        = "OrangeRed";    
// Thick X 2 - making decorations thicker if it is a vent to make sure they go through shell
Dec_Thick       = Vent ? Thick*2 : Thick; 
// - Depth decoration
Dec_size        = Vent ? Thick*2 : 0.8;

PCBL=PCBLength;
PCBW=PCBWidth;



   
module SlopeRoundBox($a=Length, $b=Width, $c=TopHeight+BottomHeight){
                    $fn=Resolution;     
                         
                        translate([Filet,-Filet/2,Filet])
                        {  
                    minkowski ()
                    {  
              
                    translate([0,($b/2),TopHeight])
                       rotate(a=[0,-90,90])
                          linear_extrude(height =($b/2)-Filet/2, center = false, convexity = 0, twist = 0)
                              polygon(points=[[0,0],[(SlopeHeight+TopHeight)*-1,0],[TopHeight*-1,($a-Filet*2)*-1],[0,($a-Filet*2)*-1]], paths=[[3,2,1,0]]);                      
                  
                                      
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
                        cylinder(r=Filet,h=Length/2, center = false);
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
                               translate([-Thick,-Thick,TopHeight]){// Cube à soustraire
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

                    translate([3*Thick +5,Width-Thick/2-1.4,TopHeight]){
                            rotate([90,0,0]){
                                    $fn=6;
                                    cylinder(d=16,Thick/2);
                                    }   
                            }
                            
                       translate([Length-((3*Thick)+5),Width-Thick/2-1.4,TopHeight]){
                            rotate([90,0,0]){
                                    $fn=6;
                                    cylinder(d=16,Thick/2);
                                    }   
                            }


                        }
                            
                    } //Fin fixation box legs
                    
                    
            }

       }//fin difference decoration


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
            }//fin de sides holes

        KeyboardCutout();

        }//fin de difference holes
        KeyboardFeet();
        
        
        
        

}// fin coque 





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
                               translate([-Thick,-Thick,BottomHeight]){// Cube à soustraire
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
              cube([35,Dec_Thick+2,BottomHeight-13]);
            }
                

            // Power Opening    
            translate([-1,(Thick)+26.6,Thick+4]){
              cube([12,12,BottomHeight-11]);
            }   

            // Audio Opening    
            translate([-1,(Thick)+46.7,Thick+4]){
              cube([12,12,BottomHeight-11]);
            }   

            // Video Opening    
            translate([-1,(Thick)+68.5,Thick+4]){
              cube([12,12,BottomHeight-11]);
            }   

            // S-Video Opening    
            translate([-1,(Thick)+91.5,Thick+4]){
              cube([15,15,BottomHeight-9]);
            }   

            // IEC Opening    
            translate([-1,(Thick)+118.2,Thick+4]){
              cube([21,21,BottomHeight-7]);
            }   

        
    
            // Glamour Line
        
            translate([Length-.5,0,BottomHeight-.75]){
             cube([20,Width,20]);
                }               
            translate([-.5,0,BottomHeight-.75]){
             cube([1,Width,20]);
                }
             translate([0,-.5,BottomHeight-.75]){    
              cube([Length,1,5]);
            }  
             translate([0,Width-.5,BottomHeight-.75]){    
              cube([Length,20,5]);
            }  
           
                
            }//fin difference decoration


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
            }//fin de sides holes
        }
        }//fin de difference holes
}



module foot(FootDia,FootHole,FootHeight){
    Filet=2;
    color("Orange")   
    translate([0,0,Filet-1.5])
    difference(){
    
    difference(){
            //translate ([0,0,-Thick]){
                cylinder(d=FootDia+Filet,FootHeight-Thick, $fn=100);
                        //}
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
        translate([40,Width-20,-20])
          {
                       rotate(a=[8,0,270])
           { 
                          linear_extrude(height =12, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[-1,2],[308,2],[308,19],[327,19],[327,41],[289,41],[289,59],[327,59],[327,80],[194,80],[194,100],[72,100],[72,81],[27,81],[27,100],[-1,100]], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]]);        
               
                          linear_extrude(height =12, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[37.5,-26],[117.5,-26],[117.5,-4],[37.5,-4]], paths=[[0,1,2,3]]);        
               
                            linear_extrude(height =12, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[217,-30],[352,-30],[352,-9],[217,-9]], paths=[[0,1,2,3]]);        
               
               }
                            }              
        }
    }

module KeyboardCutoutReinforcement()
{
      color("OrangeRed"){
        translate([40,Width-20,-14])
          {
                       rotate(a=[8,0,270])
           { 
                          linear_extrude(height =5, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[-3,0],[310,0],[310,17],[329,17],[329,43],[291,43],[291,57],[329,57],[329,82],[196,82],[196,102],[69,102],[69,83],[29,83],[29,102],[-3,102]], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]]);        
               
                          linear_extrude(height =5, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[35.5,-28],[119.5,-28],[119.5,-2],[35.5,-2]], paths=[[0,1,2,3]]);        
               
                            linear_extrude(height =5, center = false, convexity = 0, twist = 0)              
                                polygon(points=[[214,-32],[354,-32],[354,-7],[214,-7]], paths=[[0,1,2,3]]);        
               
               }
                            }              
        }
    }


module KeyboardFeet()
{
     color("OrangeRed"){
        translate([40,Width-20,-15])
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
    } // Fin PCB 
////////////////////////////// - 4 Feet - //////////////////////////////////////////     




//top LEFT
    translate([(3*Thick)+2+2.2,(Thick)+PCBW+15-351.8,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        

    translate([(3*Thick)+2+2.2,(Thick)+PCBW+15-215.3,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        

//top right       
            translate([3*Thick+2+7.5,(Thick)+PCBW+15-9.7,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
            }
        translate([3*Thick+2+7.5,(Thick)+PCBW+15-109.4,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }

        translate([3*Thick+2+10.8,(Thick)+PCBW+15-140.5,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }
    translate([(3*Thick)+2+26.8,(Thick)+PCBW+15-22.7,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        



//bottom LEFT
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+15-351.5,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        


    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+15-305,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        



    //bottom right
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+15-22.7,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+15-81.5,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+15-149.2,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        
    translate([(3*Thick)+PCBL-10.2,(Thick)+PCBW+15-6.4,Thick/2]){
        foot(FootDia,FootHole,FootHeight+0.2);
        }        

 

}

module Logo()
{
    
    
union() {
scale([.1,.1, .1])
rotate([0,0,90])
    linear_extrude(height =30, center = false, convexity = 0, twist = 0)
               import(file = "//LSERVER02/FileServer/fileserv/Development/Vintage/Projects/vic2020/Support/viclogo.svg", center = true);    
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



