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

public boolean palindrome(String word)
{
  //your code here
  word=word.replaceAll("[^a-zA-Z]", "").toLowerCase();
  String reversed=new String();
  for(int i=word.length()-1;i>=0;i--)
  {
    reversed=reversed+word.charAt(i);
  }
  if(word.equals(reversed)) {return true;}
  return false;
}
