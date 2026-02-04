Write-Host "Welcome to Password Checker" -ForegroundColor Green

#varialbe for feedback
$feedback = @()

$reqs = @"
Your password must contain all of the following to pass:
14 or more characters
1 or more Numbers
1 or more Special characters
1 or more lowercase letters
1 or more uppercase letters
"@

#while loop to hold everything
DO{
  Write-Host "$reqs" -ForegroundColor Light Green
  #get password
  $password = read-host -prompt "Enter your password" -ForegroundColor Green

  #use regex for pattern match
  #check length
  if($password -notmatch ){
    $feedback += "Your password is not long enough, must be 14 characters"
  }

  #check for number
  if($password -notmatch "\d"){
    $feedback += "Your password must contain a number"
  }

  #TODO
  #check for special character
  if(){
    $feedback += "Your password must contain a special character ex: !, @, #, $, %, ^, &, or *"
  }

  #check for lowercase letter
  if($password -cnotmatch "[a-z]"){
    $feedback += "Your password must contain a lowercase letter"
  }

  #check for upppercase letter
  if($password -cnotmatch "[A-Z]"){
    $feedback += "Your password must contain an uppercase letter"
  }

  if ($feedback.count -gt 0){
    foreach $comment in $feedback{
      Write-Host "$comment \'r'n" -ForegroundColor dark red
    }
  }
  else{
    Write-host "Great job! Your password meets all the requirements!"
  }


#contineue? 10
#another loop here to get proper response
$continue = read-host -prompt "would you like to enter another password?"



} while(loopFlag -match "yes")
#end while loop

Write-Host "Thanks for using the password Checker!" -ForegroundColor Green
