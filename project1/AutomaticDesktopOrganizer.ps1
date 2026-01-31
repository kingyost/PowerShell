# set the target folder to sort
$targetPath = "c:\User\KingYost\Documents\Github\Project1\ToSortFolder"

# get a list of items and their file type from the ToSortFolder
$fileList = @(Get-childitem | select-object name, extension)

<#
For loop, sorting all of the files into their respective subfolders
jpeg/png -> images, txt -> text, anything else -> other
This is a multi line comment
#>
if ($fileList.length -gt 0){
# determine file type
  for (){

  }
# if-else statement to select folder

# check that the nessessary folder exits

# move file

}
else{
  write-host "There are no files in $targetPath" -ForegroundColor Green
}


# Declare to user that the task is complete
# use multiline string from var
$exitStatement = @"
All files sorted!
There were $fileList.length in $targetPath
"

write-host "$exitStatement" -ForegroundColor Green
