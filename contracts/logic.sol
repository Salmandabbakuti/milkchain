pragma solidity ^0.5.12;

contract milkyChain{

    address public weigher;
    address public tester;
    address public chiller;
    address public pasteurizer;
    address public packer;
    address public dispatcher;


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
    
    uint temparature;
    uint waterQuantity;
   }

  struct LorryDispatch{
   
   uint milkQuantity;
   uint totalTrays;
   uint emptyTrays;
   uint returnedTrays;
  }

}

