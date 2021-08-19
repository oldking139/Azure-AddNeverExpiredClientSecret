# Azure-AddNeverExpiredClientSecret
自定义 Azure 应用中 Client secret 的过期时间

### 使用方法(手动版)：
1) 在 Azure 门户中开启Azure powershell

2) 运行以下代码以确认租户id：
```
Connect-AzureAD -TenantId **** -confirm
```
请将****替换为用户的租户id。

3) 拉取脚本：
```
wget https://raw.githubusercontent.com/oldking139/Azure-AddNeverExpiredClientSecret/master/Add-client-secret-no-tenant-check.ps1
```
4) 运行脚本：
```
./Add-client-secret-no-tenant-check.ps1
```
请注意：生成的client id仅显示一次，请务必在生成后立即保存到安全的地方。

### 自动化版：
```
wget https://raw.githubusercontent.com/oldking139/Azure-AddNeverExpiredClientSecret/master/Add-client-secret.ps1
./Add-Client-secret.ps1
```
### 关于脚本：
1) 租户id（tenant id）：当前用户的租户id，脚本会自动使用azure powershell获取。
2) 客户端密码（Client secret）过期时间：故名思意，即接下来创建该应用的client secret的过期时间，以年为单位（整数），默认为300年。
3) 应用对象id（Object id）：需要注册Client secret的应用的object id，可以在该应用的 概述 查看。
