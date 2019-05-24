void move(){  
    if(x1>=550 && bounce!=true){
      bounce=true;     
    } 
    else if(x1==420){
      bounce=false;     
    }
    if (bounce==true){
       x1-=xspeed; 
    }
    else if (bounce==false)
    {
      x1+=xspeed;
    }
   
    
  
}
}
