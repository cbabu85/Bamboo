

contract auction
  (address _beneficiary
  ,uint _bidding_time
,bool[address] _bids
	,uint _highest_bid)
{
   default
   {
bid new_bid =
new bid(sender(msg), value(msg), this) along value(msg)
reentrance { abort; }; // failure throws.
     _bids[sender(msg)] = true;
     return (true) then
         auction(_beneficiary, _bidding_time, _bids, value(msg));
   }
}
