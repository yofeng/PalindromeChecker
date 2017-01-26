public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String sWord){
  if(sWord.equals(reverse(sWord)))
  {
    return true;    
  }
  else
  {
    return false;    
  }
}
public String reverse(String str){
  String gip = new String();
  for (int i = str.length()-1; i >= 0; i--)
  {
    gip = gip + str.charAt(i);
  }
  return gip;
}


