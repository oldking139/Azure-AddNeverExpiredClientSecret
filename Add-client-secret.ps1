Write-Output "感谢使用AZURE应用Client secret过期时间定制脚本"

$Get_AzTenant_Id = Get-AzTenant
Write-Output "正在应用当前Azure用户的租户id"
Connect-AzureAD -TenantId $Get_AzTenant_Id -confirm

$startDate = Get-Date
$AddYears = Read-Host "请输入您注册client secret所需要的过期时间(默认过期时间为300年)"
if ([string]::IsNullOrWhiteSpace($AddYears))
{$AddYears = ‘300’}

$endDate = $startDate.AddYears($AddYears)
$ObjectId = Read-Host "请输入您所需要注册client secret的应用（Application）的ObjectId"
$aadAppsecret01 = New-AzureADApplicationPasswordCredential -ObjectId $ObjectId -StartDate $startDate -EndDate $endDate
Write-Output $aadAppsecret01
