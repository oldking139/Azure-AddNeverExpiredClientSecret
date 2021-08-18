# Azure-AddNeverExpiredClientSecret
自定义 Azure 应用中 Client secret 的过期时间

### 使用方法：
1) 在 Azure 门户中开启一个Azure powershell
2) 拉取脚本：
```
wget https://raw.githubusercontent.com/oldking139/Azure-AddNeverExpiredClientSecret/main/Add-client-secret.ps1
```
3) 运行脚本：
```
./Add-client-secret.ps1
```
请注意：生成的client id仅显示一次，请务必在生成后立即保存在安全的地方。

### 关于脚本：
1) 租户id（tenant id）：即每一个用户唯一id，若应用注册在当前用户下，则可以留空；若应用注册在其他用户下，则填写其他用户的租户id。
2) 客户端密码（Client secret）过期时间：故名思意，即接下来创建该应用的client secret的过期时间，以年为单位（整数），默认为300年。
3) 应用对象id（Object id）：需要注册Client secret的应用的object id，可以在该应用的 概述 查看。
