method CalcProduct(m: nat, n: nat) returns (res: nat)
  ensures res == m*n;
{
  var m1: nat := m;
  res := 0;

  while (m1!=0)
    invariant res == (m-m1)*n;
    decreases m1;
  {
    var n1: nat := n;
    ghost var r := res;
    while (n1 != 0)
      invariant res == r + (n-n1);
      decreases n1;
     {
       res := res+1;
       n1 := n1-1;
     }
    m1 := m1-1;
  }
}


















/*
method CalcThreeProduct(m: nat, n: nat, p: nat) returns (res: nat)
  ensures res == m*n*p;
{
  var m1: nat := 0;
  res := 0;

  while (m1!=m)
  {
    var n1: nat := 0;
    while (n1!=n)
    {
      var p1: nat := 0;
      while (p1!=p)
      {
        res := res+1;
        p1 := p1+1;
      }
      n1 := n1+1;
    }
    m1:= m1+1;
  }
}

*/
