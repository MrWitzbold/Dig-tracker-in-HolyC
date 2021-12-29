I32 position_X = 0;
I32 position_Y = 0;
I32 position_Z = 0;

I64 RandRange(I64 min=0; I64 max)
{
  return Abs(RandI64 % (max+1-min) + min);
}

I64 i = 0;
I64 random_int = 0;

for(i = 0; i < 100; i++)
{
  random_int = RandRange(0, 20);
  
  if(random_int % 3 == 0)
  {
    Print("\nDig! It's badding along the X axis");
    position_X = position_X + 1;
  }
  else 
  {
    if(random_int % 2 == 0)
    {
      Print("\nDig! It's badding along the Y axis");
      position_Y = position_Y + 1;
    }
    else 
    {
      if(random_int % 1 == 0)
      {
        Print("\nDig! It's badding along the Z axis");
        position_Z = position_Z + 1;
      }
    }
  }
}

Print("\n\nPosition X: %d", position_X)
Print("\n\nPosition Y: %d", position_Y)
Print("\n\nPosition Z: %d", position_Z)
