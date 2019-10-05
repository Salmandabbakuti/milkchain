pragma solidity ^0.5.12;

contract milkyChain{

    address public weigher;
    address public tester;
    address public pasteurizer;
    address public packer;
    address public dispatcher;

   constructor(address _weigher,address _tester,address _pasteurizer,address _packer,address _dispatcher) public {
    weigher = _weigher;
    tester = _tester;
    packer= _packer;
    pasteurizer=_pasteurizer;
    dispatcher = _dispatcher;
      }
struct milkIn{
    string from;
    uint quantity;
    string vehicle;
    uint date;
    }
struct milkOut{
     uint date;
     uint quantity;
   }
 struct milkTest{
   uint testDate;
   string sampleId;
   uint acidity;
   uint alchol;
   uint fat;
   uint clr;
   uint sugar;
   uint neutraizer;
   uint salt;
   uint urea;
    }
struct pasteur {
    uint date;
    uint chillingTemp;
    uint pasteurizedTemp;
    uint waterQuantity;
   }
struct lorryDispatch{
   uint date;
   uint milkQuantity;
   uint totalTrays;
   uint emptyTrays;
   uint returnedTrays;
  }
mapping(uint=>milkIn[]) public inlet;
mapping(uint=>milkTest[]) public milkTests;
mapping(uint=>pasteur[]) public pasteurData;
mapping(uint=>milkOut[]) public outlet;
mapping(uint=>lorryDispatch[]) public dispatches;
 
function recordMilkIn(string memory _from, uint _quantity, string memory _vehicle,uint _date) public {
    
    milkIn memory milkData= milkIn(_from, _quantity, _vehicle, _date);
      
    inlet[_date].push(milkData);
    
   }
   
  function addTestResults(uint _date,string memory _sampleId,uint _acidity,uint _alchol,uint _fat,uint _clr,uint _sugar,uint _neutraizer,uint _salt,uint _urea) public {
     require(msg.sender==tester);
     milkTest memory testResults=milkTest(_date,_sampleId,_acidity,_alchol,_fat,_clr,_sugar,_neutraizer,_salt,_urea);
     milkTests[_date].push(testResults);
         }

 function addPasteurData(uint _date,uint _chillingTemp,uint _pasteurizedTemp,uint _waterQuantity) public {
     require(msg.sender==pasteurizer);
     pasteur memory testResults=pasteur(_date,_chillingTemp, _pasteurizedTemp, _waterQuantity);
     pasteurData[_date].push(testResults);
         }

  function recordMilkOut(uint _date, uint _quantity) public {
    require(msg.sender==packer);
    milkOut memory milkData= milkOut(_date, _quantity);
      
    outlet[_date].push(milkData);
    
   }
  function recordMilkDispatch(uint _date, uint _quantity,uint _totalTrays, uint _emptyTrays,uint _returns) public {
    require(msg.sender==dispatcher);
    lorryDispatch memory milkData= lorryDispatch(_date, _quantity,_totalTrays,_emptyTrays,_returns);
      
    dispatches[_date].push(milkData);
    
   }

  

}


