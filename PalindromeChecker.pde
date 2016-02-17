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
public boolean palindrome(String word)
{
  String temp = noSpaces(word.toLowerCase());
  for(int i =0; i < temp.length(); i++)
  {
 if(temp.charAt(i) == temp.charAt((temp.length() - 1)-i))
  {
  if(i == temp.length() - 1)
  {
  return true;
  }
  }
  else 
  {
  return false;
 }
  }
  return false;
}
public String noSpaces(String sWord)
{
 String temp = new String();
 for(int i =0; i < sWord.length(); i++)
 { 
  if(Character.isLetter(sWord.charAt(i)) == true)
  {
   temp = temp + sWord.charAt(i);
  }
 }
 return temp;    
}
 
