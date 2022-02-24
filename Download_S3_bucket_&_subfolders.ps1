$sourceBucket = 'mypayslip1892097'
$profile = 'MyNewProfile'
$Folder = 'F:\s3'
 
$items = Get-S3Object -BucketName $sourceBucket -ProfileName $profile -Region 'us-east-1'
Write-Host "$($items.Length) objects to copy"
$index = 1
$items | % {
    Write-Host "$index/$($items.Length): $($_.Key)"
    $fileName = $Folder + ".\$($_.Key.Replace('/','\'))"
    Write-Host "$fileName"
    Read-S3Object -BucketName $sourceBucket -Key $_.Key -File $fileName -ProfileName $profile -Region 'us-east-1' > $null
    $index += 1
}