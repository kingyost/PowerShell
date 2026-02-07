Write-Host "Welcome to Password Checker" -ForegroundColor Green

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
  Write-Host "$reqs" -ForegroundColor Green
  #varialbe for feedback
  $feedback = @()

  #get password
  $password = read-host -prompt "Enter your password"

  #use regex for pattern match
  #check length
  if($password.Length -ge 14){
    $feedback += "Your password is not long enough, must be 14 characters"
  }

  #check for number
  if($password -notmatch '[\d]'){
    $feedback += "Your password must contain a number"
  }

  #TODO
  #check for special character
  if($password -notmatch '[!@#$%^&*]+'){
    $feedback += "Your password must contain a special character ex: !, @, #, $, %, ^, &, or *"
  }

  #check for lowercase letter
  if($password -cnotmatch '[a-z]'){
    $feedback += "Your password must contain a lowercase letter"
  }

  #check for upppercase letter
  if($password -cnotmatch '[A-Z]'){
    $feedback += "Your password must contain an uppercase letter"
  }

  if ($feedback.count -gt 0){
    foreach ($comment in $feedback){
      Write-Host "$comment" -ForegroundColor darkred
    }
  }
  else{
    Write-host "Great job! Your password meets all the requirements!" -ForegroundColor Cyan
  }

#contineue? 10
#contineue? 9
#contineue? 8
#another loop here to get proper response
  DO {
    write-host "start of 2nd do-while. value of continue: $continue"
    $continue = (Read-Host -prompt "Would you like to enter another password? [Y]es - [N]o").ToLower()
    if($continue -match "y" -or $continue -match "yes"){
      $continue = "yes"
    }
    elseif($continue -match "n" -or $continue -match "no"){
      Write-Host "Thank you for using password checker!"
      $continue = "no"
    }
    else{
      Write-Host "Invlaid input. Valid inputs: Y, Yes, N, No"
    }
  } while ($continue -notmatch "yes" -and $continue -notmatch "no")

} while($continue -match "yes")
#end while loop

Write-Host "Thanks for using the password Checker!" -ForegroundColor Green