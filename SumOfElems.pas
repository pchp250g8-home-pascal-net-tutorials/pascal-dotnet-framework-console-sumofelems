uses
  System;
begin
  var nElems := 0;
  Console.Clear();
  Console.WriteLine('Input a count of elements');
  Int32.TryParse(Console.ReadLine(), nElems);
  var iArray : array of integer := new integer[nElems];
  var oRnd := New Random();
  for var i := 0 to nElems - 1 do
  begin
    var nItem := oRnd.Next(1, 50);
    iArray[i] := nItem;
  end;
  var nSum := 0;
  for var i := 0 to nElems - 1 do
  begin
    nSum += iArray[i];
    Console.Write(iArray[i] + ' ');
  end;
  Console.WriteLine(#13#10+$'The Sum of {nElems} elements of the array is:{nSum}');
  Console.Read();
end.