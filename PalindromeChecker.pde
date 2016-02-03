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
  String s = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if(word.charAt(i) !=word.charAt(word.length()-1-i))
  return false;
  }
  return true;
   
}

public String noSpaces(String word)
{
  String s = new String();
  for( int i = 0 ; i < word.length(); i++)
   if(!word.substring(i,i+1).equals(" "))
    s = s + word.substring(i,i+1);
   return s;
}

public int numLetters(String word)
{
  int s =0;
  for(int i = 0; i < word.length(); i++)
  {
  if(Character.isLetter(word.charAt(i)) == true)
  {
   s = s + 1;
  }
  if(Character.isLetter(word.charAt(i)) == false)
  s = s + 0;
  }
  return s;
}

 public String noCapitals(String word)
 {
  String s = new String();
  s = s + word.toLowerCase();
  return s;
 }

