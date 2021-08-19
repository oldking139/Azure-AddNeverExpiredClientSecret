# Azure-AddNeverExpiredClientSecret
自定义 Azure 应用中 Client secret 的过期时间

### 使用方法：
1) 在 Azure 门户中开启Azure powershell
2) 拉取dev脚本：
```
wget https://raw.githubusercontent.com/oldking139/Azure-AddNeverExpiredClientSecret/dev/Add-client-secret.ps1

```
3) 运行dev脚本：
```
./Add-client-secret.ps1
```
请注意：生成的client id仅显示一次，请务必在生成后立即保存到安全的地方。

### 关于脚本：
1) 租户id（tenant id）：当前用户的租户id，脚本会自动使用azure powershell获取。若需要针对其他用户下的应用进行操作，请输入其他子用户的租户id。
2) 客户端密码（Client secret）过期时间：故名思意，即接下来创建该应用的client secret的过期时间，以年为单位（整数），默认为300年。
3) 应用对象id（Object id）：需要注册Client secret的应用的object id，可以在该应用的 概述 查看。
