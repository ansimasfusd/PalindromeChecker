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
  String sNew = new String(); 
  sNew = onlyLet(word);
  if(sNew.equals(reverse(sNew))){
    return true;
  }
  return false;
 /*  String sNew = new String();
  for(int i = 0; i<word.length();i++){
    if(word.substring(i,i+1).equals(" ") == false){
      sNew = sNew + word.substring(i,i+1);
    }
  }
  
    String sWordrev = new String();
  for(int i = word.length()-1; i>=0; i--){
    sWordrev = sWordrev + word.substring(i, i+1);
  }
  return (sWordrev.equals(word)); 
  */
}
public String reverse(String str)
{
     String sWordrev = new String();
  for(int i = str.length()-1; i>=0; i--){
    sWordrev = sWordrev + str.substring(i, i+1);
  }
    return sWordrev;
}
public String onlyLet(String str){
  String onlyLetters = new String();
  for ( int i =0; i< str.length(); i++){
    if(Character.isLetter(str.charAt(i))){
      onlyLetters = onlyLetters + str.charAt(i);
    }
  }
  return onlyLetters.toLowerCase();
}