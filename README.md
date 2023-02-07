# Gas test
 Struct gas testing for a project

 Test Conclusion of Structs:
-Optimizing struct slots is important 
-We looked at two slots with 4 data: uint256, uint64, uint64, uint64
-Gas consumption of slots after order of inquiry (for reference):
 -First slot                               2532gas
 -Last slot, last data                     2668gas 
 -Last slot                                3442gas
 -First slot and one data of second slot   4905gas 
 -All data of all slots                    5686gas
-It also saves gas if you automate the call with msg.sender, so you don't have to enter the address in the function (address owner), but instead, reference a mapping that assigns msg.sender to the struct in the function()
-We also looked at what happens when we break down the structs and assign values to them separately: we concluded that it is not a bad solution, but it is not efficient and consumes twice as much gas, because you pay for the gas twice that you would otherwise put into a struct. If you still have to separate it, it is important to optimize the slots here as well, which can save gas.
-Later we looked at 4 different slot options but the results were the same, reading does not really effects gas cost no matter you are reading from the 2nd or 4th slot.
