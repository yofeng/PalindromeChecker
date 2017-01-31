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
  String reversed = onlyLetters(reverse(sWord));
  if(onlyLetters(sWord).equals(reversed))
  {
    return true;    
  }
  else
  {
    return false;    
  }
}
public String reverse(String sWord){
  String gip = new String();
  for (int i = sWord.length()-1; i >= 0; i--)
  {
    gip = gip + sWord.charAt(i);
  }
  return gip;
}

public String noSpaces(String sWord){
  String spaceless = new String();
  for(int i=0; i<sWord.length(); i++)
  {
    if(sWord.charAt(i) != ' ')
    {
      spaceless = spaceless + sWord.substring(i, i+1);
    }
  }
  return spaceless;
}

public String onlyLetters(String sWord){
  String text = new String();
  for(int i=0; i<sWord.length(); i++)
  {
    if(Character.isLetter(sWord.charAt(i)) == true)
    {
      text = text + sWord.substring(i, i+1).toLowerCase();
    }
  }
  return text;
}

/*
public String noCapitals(String sWord){
    return sWord.toLowerCase();
}
*/
