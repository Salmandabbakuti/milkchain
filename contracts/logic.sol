pragma solidity ^0.5.12;

contract milkyChain{

    address public weigher;
    address public tester;
    address public pasteurizer;
    address public dispatcher;

   constructor(address _weigher,address _tester,address _pasteurizer,address _dispatcher) public {
    weigher = _weigher;
    tester = _tester;
    pasteurizer=_pasteurizer
    dispatcher = _dispatcher;
      }


  struct milkIn{
    string from;
    uint quantity;
    string vehicle;
    uint date;
    }



  struct milkTest{
   uint acidity;
   uint alchol;
   uint fat;
   uint clr;
   uint sugar;
   uint neutraizer;
   uint salt;
   uint urea;

  }

  struct pasteurizer {
    
    uint chillingTemp;
    uint pasteurizedTemp;
    uint waterQuantity;
   }

  struct milkOut{
     uint quantity;
     uint wastage;
     

}

  struct LorryDispatch{
   
   uint milkQuantity;
   uint totalTrays;
   uint emptyTrays;
   uint returnedTrays;
  }

}

