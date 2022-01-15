'use strict';

class Game
{

 constructor()
 {
  //metavlhtes
  var i=0;
  var x=0;
  var y=0;
  //epafes
  this.imagePath="./images/";
  this.boardSize=4;
  this.tileSize=80;
  this.tokenSize=80;
  this.border=5;

  document.getElementById('viewport').
   setAttribute( 'content',"user-scalable=no,width="+
     window.innerWidth+",height="+window.innerHeight);

  var winDiv=document.getElementById("win");
  winDiv.style.height=this.tokenSize*4+4;
  winDiv.style.width=this.tokenSize*4+4;
  winDiv.style.top=this.tileSize*this.boardSize+this.boardSize+this.border;
  winDiv.style.left=this.border;

  //metavlhtes tou paixnidiou
  this.playerTurn=2;
  this.winningPlayer=-1;

  //dhmiourgia tou pinaka
  this.board=new Board(this.boardSize,this.boardSize,
    this.tileSize,this.tileSize,
    "#EAC6F8");
  
  //epilegmenh marka
  this.selectedToken=-1;
  this.selectionToken=new Token(-this.tokenSize,-this.tokenSize,
    this.tokenSize,this.tokenSize,
    this.imagePath+"selection.png");
  
  //strofi markas
  x=this.tileSize*this.boardSize+this.boardSize+this.border;
  y=this.border+41;
  this.turnToken=new Token(x,y,
    30,30,
    this.imagePath+"turn.png");

  //marka paikth 1
  x=this.tileSize*this.boardSize+this.boardSize+this.border;
  y=this.border+60;
  this.p1Token=new Token(x,y,
    30,30,
    this.imagePath+"p1.png");
  this.p1Token.gfx.style.zIndex=2;

  //marka paikth 2
  x=this.tileSize*this.boardSize+this.boardSize+this.border;
  y=this.border+60;
  this.p2Token=new Token(x,y,
    30,30,
    this.imagePath+"p2.png");
  this.p2Token.gfx.style.zIndex=2;

  //markes Quarto
  var token;

  //ble eksw aspro mesa
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"bcen.png");
  token.type=0b1111;
  this.board.addToken(token);
  i++;

  //ble eksw keno mesa me gemato daktylio
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"bcer.png");
  token.type=0b1110;
  this.board.addToken(token);
  i++;

  //ble kyklos gematos
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"bcfn.png");
  token.type=0b1101;
  this.board.addToken(token);
  i++;

  //ble kyklos me gemato daktylio
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"bcfr.png");
  token.type=0b1100;
  this.board.addToken(token);
  i++;

  //ble tetragwno keno
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"bsen.png");
  token.type=0b1011;
  this.board.addToken(token);
  i++;

  //ble tetragwno me adeio daktylio
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"bser.png");
  token.type=0b1010;
  this.board.addToken(token);
  i++;

  //ble tetragwno gemato
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"bsfn.png");
  token.type=0b1001;
  this.board.addToken(token);
  i++;

  //ble tetragwno me gemato daktylio
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"bsfr.png");
  token.type=0b1000;
  this.board.addToken(token);
  i++;

  //leukos kyklos kenos
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"wcen.png");
  token.type=0b0111;
  this.board.addToken(token);
  i++;

  //leukos kyklos me keno dantylio
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"wcer.png");
  token.type=0b0110;
  this.board.addToken(token);
  i++;

  //leukos kyklos gematos 
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"wcfn.png");
  token.type=0b0101;
  this.board.addToken(token);
  i++;

  //leukos kyklos me gemato daktylio
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"wcfr.png");
  token.type=0b0100;
  this.board.addToken(token);
  i++;

  //leuko tetragwno me keno 
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"wsen.png");
  token.type=0b0011;
  this.board.addToken(token);
  i++;

  //leuko tetragwno me adeio daktylio
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"wser.png");
  token.type=0b0010;
  this.board.addToken(token);
  i++;

  //leuko tetragwno gemismeno
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"wsfn.png");
  token.type=0b0001;
  this.board.addToken(token);
  i++;

  //leuko tetragwno me gemato daktylio
  x=(i%4)*this.tokenSize+(i%4);
  x+=this.border;
  y=((i/4)|0)*this.tokenSize+((i/4)|0);
  y+=this.border+this.boardSize*this.tileSize+this.boardSize;
  token=new Token(x,y,
     this.tokenSize,this.tokenSize,
     this.imagePath+"wsfr.png");
  token.type=0b0000;
  this.board.addToken(token);
  i++;

  this.refresh();
 }

 refresh()
 {
  //sxediase ton pinaka [pou tha sxediasei tia markes]
  this.board.draw(this.border,this.border);
  //sxediase alle markes
  if(this.winningPlayer!=-1) //telos paixnidiou
  {
   var winDiv=document.getElementById("win");
   winDiv.style.display="block";
   winDiv.style.zIndex=1;
   //apokripsi ths strofis ths markas kai ths markas twn paiktwn
   this.turnToken.hidden=true;
   this.p1Token.hidden=true;
   this.p2Token.hidden=true;
   //ruthmise thn swsth marka paikth gia na bgei o nikhths
   if(this.winningPlayer==2)
   {
    this.p2Token.hidden=false;
    this.p2Token.x=this.border+this.tokenSize*2-this.tokenSize/2;
    this.p2Token.y=this.border+this.boardSize*this.tileSize+
     this.boardSize+this.tokenSize+1;
   }
   else
   {
    this.p1Token.hidden=false;
    this.p1Token.x=this.border+this.tokenSize*2-this.tokenSize/2;
    this.p1Token.y=this.border+this.boardSize*this.tileSize+
     this.boardSize+this.tokenSize+1;
   }
  }
  else
  {
   //show only the actual player token
   this.p2Token.hidden=this.playerTurn!=2;
   this.p1Token.hidden=this.playerTurn!=1;
  }
  this.selectionToken.draw();
  this.turnToken.draw();
  this.p1Token.draw();
  this.p2Token.draw();
 }

 onTileClick(x,y)
 {
  if(this.winningPlayer!=-1) return; //game ended
  if(this.selectedToken!=-1) //there's a selected token
  {
   //metakinhseto sto epilegmeno plakidio
   this.board.board[y][x].token=this.board.tokens[this.selectedToken];
   //aferesai to apo tis diathesimes markes
   this.board.tokens[this.selectedToken]=null;
   //xwris epilogh metakinhse thn marka ektos othonhs
   this.selectedToken=-1;
   this.selectionToken.x=-this.selectionToken.width;
   this.selectionToken.y=-this.selectionToken.height;
   this.refresh();
   this.checkWin();
  }
 }

 onTokenClick(index)
 {
  if(index==0) //help token
  {
   var rulesDiv=document.getElementById("rules");
   if(rulesDiv.style.display!="block")
   {
    rulesDiv.style.zIndex=3;
    rulesDiv.style.display="block";
   }
   else
   {
    rulesDiv.style.zIndex=0;
    rulesDiv.style.display="none";
   }
   return;
  }
  if(this.winningPlayer!=-1) return; //game ended
  if(this.selectedToken==-1 && //no selection
    this.board.tokens[index]!=null) //token not already placed
  {
   //apothikeysai thn epilegmenh marka, metakineisai thn epilogh kai sxediase thn 
   this.selectedToken=index;
   this.selectionToken.x=this.board.tokens[index].x;
   this.selectionToken.y=this.board.tokens[index].y;
   this.playerTurn=(this.playerTurn)%2+1;
   this.refresh();
  }
 }

 checkWin()
 {
  var orRes=0;
  var andRes=0;
  //x-wise
  for(var y=0;y<this.board.boardHeight;y++)
  {
   orRes=0b0000;
   andRes=0b1111;
   for(var x=0;x<this.board.boardWidth;x++)
   {
    if(this.board.board[y][x].token==null)
    {
     orRes=0b1111;
     andRes=0b0000;
     break;
    }
    andRes&=this.board.board[y][x].token.type;
    orRes|=this.board.board[y][x].token.type;
   }
   if(andRes!=0)//at last 1 bit is 1
   {
    //ola ta kommatia exoun 1 sto idio bit [exoun ena koino xaraktiristiko]
    this.winningPlayer=this.playerTurn;
    this.refresh();
    return;
   }
   if(orRes!=15)
   {
    //ola ta kommatia exoun 0 sto idio bit [exoun ena koino xaraktiristiko]
    this.winningPlayer=this.playerTurn;
    this.refresh();
    return;
   }
  }
  //y-wise
  for(var x=0;x<this.board.boardWidth;x++)
  {
   orRes=0b0000;
   andRes=0b1111;
   for(var y=0;y<this.board.boardHeight;y++)
   {
    if(this.board.board[y][x].token==null)
    {
     orRes=0b1111;
     andRes=0b0000;
     break;
    }
    andRes&=this.board.board[y][x].token.type;
    orRes|=this.board.board[y][x].token.type;
   }
   if(andRes!=0)//at last 1 bit is 1
   {
    //ola ta kommatia exoun 1 sto idio bit [exoun ena koino xaraktiristiko]
    this.winningPlayer=this.playerTurn;
    this.refresh();
    return;
   }
   if(orRes!=15)//at last 1 bit is 0
   {
    //ola ta kommatia exoun 0 sto idio bit [exoun ena koino xaraktiristiko]
    this.winningPlayer=this.playerTurn;
    this.refresh();
    return;
   }
  }
  //diagonal
  orRes=0b0000;
  andRes=0b1111;
  for(var y=0,x=0;
    y<this.board.boardHeight && x<this.board.boardWidth;
    y++,x++)
  {
   if(this.board.board[y][x].token==null)
   {
    orRes=0b1111;
    andRes=0b0000;
    break;
   }
   andRes&=this.board.board[y][x].token.type;
   orRes|=this.board.board[y][x].token.type;
  }
  if(andRes!=0)
  {
   //all pieces have 1 in the same bit [have 1 common characteristic]
   this.winningPlayer=this.playerTurn;
   this.refresh();
   return;
  }
  if(orRes!=15)
  {
   //all pieces have 0 in the same bit [have 1 common characteristic]
   this.winningPlayer=this.playerTurn;
   this.refresh();
   return;
  }
  orRes=0b0000;
  andRes=0b1111;
  for(var y=0,x=this.board.boardWidth-1;
    y<this.board.boardHeight && x>=0;
    y++,x--)
  {
   if(this.board.board[y][x].token==null)
   {
    orRes=0b1111;
    andRes=0b0000;
    break;
   }
   andRes&=this.board.board[y][x].token.type;
   orRes|=this.board.board[y][x].token.type;
  }
  if(andRes!=0)//at last 1 bit is 1
  {
   //ola ta kommatia exoun 1 sto idio bit [exoun ena koino xaraktiristiko]
   this.winningPlayer=this.playerTurn;
   this.refresh();
   return;
  }
  if(orRes!=15)//at last 1 bit is 0
  {
   //ola ta kommatia exoun 0 sto idio bit [exoun ena koino xaraktiristiko]
   this.winningPlayer=this.playerTurn;
   this.refresh();
   return;
  }
 }

}
