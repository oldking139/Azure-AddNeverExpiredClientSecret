Write-Output "感谢使用AZURE应用Client secret过期时间定制脚本"
$Get_AzTenant_Id = Read-Host "请输入你需要注册的应用的账户的租户id（Tenant id）"
if ([string]::IsNullOrWhiteSpace($Get_AzTenant_Id))
{
$Get_AzTenant_Id = Get-AzTenant
}

$startDate = Get-Date
$AddYears = Read-Host "请输入您注册client secret所需要的过期时间(默认过期时间为300年)"
if ([string]::IsNullOrWhiteSpace($AddYears))
{$AddYears = ‘300’}

$endDate = $startDate.AddYears($AddYears)
$ObjectId = Read-Host "请输入您所需要注册client secret的应用（Application）的ObjectId"
$aadAppsecret01 = New-AzureADApplicationPasswordCredential -ObjectId $ObjectId -StartDate $startDate -EndDate $endDate
Write-Output $aadAppsecret01
