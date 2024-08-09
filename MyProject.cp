#line 1 "C:/Users/start/Desktop/code/MyProject.c"






char mode[]={0b00100001,0b00010001,0b00001100,0b00001010};
signed char i,j,k=0,m;
void AUTOMATIC (){
 portd=mode[0];
 for(i=15;i>=4;i--){
 for(j=0;j<25&& portb.B1 ==0;j++){
  portb.B4 =0;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =1;
 portc=i/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =0;
  portb.B6 =1;
  portb.B7 =1;
 portc=i%10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =0;
  portb.B7 =1;
 portc=(i-3)/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =0;
 portc=(i-3)%10;
 delay_ms(10);
 }
 }
 portd=mode[1];
 for(i=3;i>=1;i--){
 for(j=0;j<25&& portb.B1 ==0;j++){
  portb.B4 =0;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =1;
 portc=i/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =0;
  portb.B6 =1;
  portb.B7 =1;
 portc=i%10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =0;
  portb.B7 =1;
 portc=(i)/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =0;
 portc=(i)%10;
 delay_ms(10);
 }
 }
 portd=mode[2];
 for(i=23;i>=4;i--){
 for(j=0;j<=25&& portb.B1 ==0;j++){
  portb.B4 =0;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =1;
 portc=(i-3)/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =0;
  portb.B6 =1;
  portb.B7 =1;
 portc=(i-3)%10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =0;
  portb.B7 =1;
 portc=i/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =0;
 portc=i%10;
 delay_ms(10);
 }
 }
 portd=mode[3];
 for(i=3;i>=1;i--){
 for(j=0;j<=25&& portb.B1 ==0;j++){
  portb.B4 =0;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =1;
 portc=(i)/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =0;
  portb.B6 =1;
  portb.B7 =1;
 portc=(i)%10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =0;
  portb.B7 =1;
 portc=i/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =0;
 portc=i%10;
 delay_ms(10);
 }
 }
 }
void Manuel(){
if( portb.B1 ==1) {
 portd=mode[k];
  portb.B4 = portb.B5 = portb.B6 = portb.B7 =1;
 switch (k){
 case 0:
 break;
 case 1:
 for(i=3;i>=1;i--){
 for(j=0;j<=25;j++){
  portb.B4 =0;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =1;
 portc=(i)/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =0;
  portb.B6 =1;
  portb.B7 =1;
 portc=(i)%10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =0;
  portb.B7 =1;
 portc=i/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =0;
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
  portb.B4 =0;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =1;
 portc=(i)/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =0;
  portb.B6 =1;
  portb.B7 =1;
 portc=(i)%10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =0;
  portb.B7 =1;
 portc=i/10;
 delay_ms(10);

  portb.B4 =1;
  portb.B5 =1;
  portb.B6 =1;
  portb.B7 =0;
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
  portb.B4 =1;
  portb.B5 =1;
  portb.B7 =1;
  portb.B6 =1;
 intedg_bit=1;
 gie_bit=1;
 inte_bit=1;
 while(1){
 if ( portb.B1 )
 Manuel();
 else
 Automatic();
 }



}
