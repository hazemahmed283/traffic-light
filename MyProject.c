#define manuel portb.B0
#define man_auto portb.B1
#define west_right portb.B4
#define west_left portb.B5
#define south_right portb.B6
#define south_left portb.B7
char mode[]={0b00100001,0b00010001,0b00001100,0b00001010};
signed char i,j,k=0,m;
void AUTOMATIC (){
  portd=mode[0];
    for(i=15;i>=4;i--){
      for(j=0;j<25&&man_auto==0;j++){
        west_right=0;
        west_left=1;
        south_right=1;
        south_left=1;
        portc=i/10;
        delay_ms(10);

        west_right=1;
        west_left=0;
        south_right=1;
        south_left=1;
        portc=i%10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=0;
        south_left=1;
        portc=(i-3)/10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=1;
        south_left=0;
        portc=(i-3)%10;
        delay_ms(10);
      }
    }
    portd=mode[1];
    for(i=3;i>=1;i--){
      for(j=0;j<25&&man_auto==0;j++){
        west_right=0;
        west_left=1;
        south_right=1;
        south_left=1;
        portc=i/10;
        delay_ms(10);

        west_right=1;
        west_left=0;
        south_right=1;
        south_left=1;
        portc=i%10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=0;
        south_left=1;
        portc=(i)/10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=1;
        south_left=0;
        portc=(i)%10;
        delay_ms(10);
      }
    }
    portd=mode[2];
      for(i=23;i>=4;i--){
      for(j=0;j<=25&&man_auto==0;j++){
        west_right=0;
        west_left=1;
        south_right=1;
        south_left=1;
        portc=(i-3)/10;
        delay_ms(10);

        west_right=1;
        west_left=0;
        south_right=1;
        south_left=1;
        portc=(i-3)%10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=0;
        south_left=1;
        portc=i/10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=1;
        south_left=0;
        portc=i%10;
        delay_ms(10);
      }
    }
    portd=mode[3];
    for(i=3;i>=1;i--){
      for(j=0;j<=25&&man_auto==0;j++){
        west_right=0;
        west_left=1;
        south_right=1;
        south_left=1;
        portc=(i)/10;
        delay_ms(10);

        west_right=1;
        west_left=0;
        south_right=1;
        south_left=1;
        portc=(i)%10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=0;
        south_left=1;
        portc=i/10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=1;
        south_left=0;
        portc=i%10;
        delay_ms(10);
      }
    }
  }
void Manuel(){
if(man_auto==1)  {
  portd=mode[k];
  west_right=west_left=south_right=south_left=1;
  switch (k){
      case 0:
      break;
      case 1:
        for(i=3;i>=1;i--){
      for(j=0;j<=25;j++){
        west_right=0;
        west_left=1;
        south_right=1;
        south_left=1;
        portc=(i)/10;
        delay_ms(10);

        west_right=1;
        west_left=0;
        south_right=1;
        south_left=1;
        portc=(i)%10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=0;
        south_left=1;
        portc=i/10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=1;
        south_left=0;
        portc=i%10;
        delay_ms(10);
      }
    }
    k=2;
    break;
    case 2:
    break;
    case 3:
    for(i=3;i>=1;i--){
      for(j=0;j<=25;j++){
        west_right=0;
        west_left=1;
        south_right=1;
        south_left=1;
        portc=(i)/10;
        delay_ms(10);

        west_right=1;
        west_left=0;
        south_right=1;
        south_left=1;
        portc=(i)%10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=0;
        south_left=1;
        portc=i/10;
        delay_ms(10);

        west_right=1;
        west_left=1;
        south_right=1;
        south_left=0;
        portc=i%10;
        delay_ms(10);
      }
    }
    k=0;
    break;
    }
  }
}
void interrupt(){
     if(intf_bit){
        intf_bit=0;
        if(k==3)k=0;
        else 
        ++k;
        Manuel();
     }
}
void main() {
    trisb=0b00000011;
    trisc=0x00;portc=0;
    trisd=0x00;portd=0;
    west_right=1;
    west_left=1;
    south_left=1;
    south_right=1;
    intedg_bit=1;
    gie_bit=1;
    inte_bit=1;
    while(1){
    if (man_auto)
    Manuel();
    else
    Automatic();
    }
    


}