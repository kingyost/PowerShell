# set the target folder to sort
$targetPath = ".\ToSortFolder"

# get a list of items and their file type from the ToSortFolder
$fileList = @(Get-childitem -File -Path $targetPath)
# $fileList = @(Get-childitem -File -Path ".\ToSortFolder")

#debug
# write-host $fileList.count

#get count to report later
#not sure what the issue is but can't get it to report at the end
#using $fileList.count with (), [], or {}. moving on
$count = $fileList.count

<#
For loop, sorting all of the files into their respective subfolders
jpeg/png -> images, txt -> text, anything else -> other
This is a multi line comment
#>

if ($fileList.count -gt 0){
# loop
  foreach ($file in $fileList){

    # determine file type
    $fileType = $file.extension

    # if-else statement to select folder and move item
    if( $fileType -match ".txt"){
      move-item $file.FullName -destination .\ToSortFolder\TxtFiles\
    }
    elseif ($fileType -match ".jpeg" -or $fileType -match ".jpg" -or $fileType -match ".png"){
      move-item $file.FullName -destination .\ToSortFolder\Images\
    }
    else{
      move-item $file.FullName -destination .\ToSortFolder\Other\
    }
  }

  # $exitStatement = @"
  # All files sorted!
  # There were $fileList.count in $targetPath
  # "@
  #
  # write-host "$exitStatement" -ForegroundColor Green

}
else{
  write-host "There are no files in $targetPath" -ForegroundColor Green
}


# Declare to user that the task is complete

$exitStatement = @"
All files sorted!
There were $count in $targetPath
"@

write-host "$exitStatement" -ForegroundColor Green
