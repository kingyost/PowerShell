#variables
$menu = ""
$other = ""
$email = false

#Functions
function show-menu {
  clear-host
  write-host "===========================" -ForegroundColor Cyan`
  write-host "   Website Downdetector    " -ForegroundColor White
  write-host "===========================" -ForegroundColor Cyan
  write-host "1) Google"
  write-host "2) Cruncyroll"
  write-host "3) Steam"
  write-host "4) Facebook"
  write-host "5) Other"
  write-host "S) Settings"
  write-host "Q) Quit"
  write-host "===========================" -ForegroundColor Cyan`
}

function setting-menu{
  clear-host
  write-host "===========================" -ForegroundColor Cyan`
  write-host "         Settings          " -ForegroundColor White
  write-host "===========================" -ForegroundColor Cyan
  write-host "Would you like the results emailed to you?"
  write-host "1) Yes"
  write-host "2) No"
}

function ping-website{
  param (
    [string]$website
  )
  write-host "Checking on $website"
  ping
}

function email-results{

}

#The Juice
while ($menu -ne "Q"){
  show-menu
  $menu = read-host "Please make a Selection"

  switch ($menu){
    "1"{

    }
    "2"{

    }
    "3"{

    }
    "4"{

    }
    "5"{

    }
    "S"{

    }
    Default {
      write-host""
    }
  }

  if($menu -ne "Q"){
    read-host "`nPress Enter to return to menu"
  }


}
