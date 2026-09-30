# 微信 8.0.78（3180）个人构建

本分支基于 eritpchy/FingerprintPay 主分支 `5055421`。上游已合并新版 LiteApp 支付窗口 `WxaLiteAppPayTransparentLiteUI` 的识别逻辑。本分支保留原 Zygisk 模块 ID，将版本码从 37 提升到 38，并提供只打包微信 Zygisk ZIP 的手动工作流。

上传的目标 APK 包名为 `com.tencent.mm`，versionName `8.0.78`，versionCode `3180`，SHA-256 `41f7dc1f720767fa78fa20dd13ea034b817bbf6ebd23dfd1324c647499c9c1ba`。静态检查确认 APK 包含新旧 LiteApp 活动类、`MainSettingsUI` 和 `tenpay_keyboard_0` 标识。静态检查无法证明支付弹窗可正常识别、密码输入成功或支付安全。

在 GitHub 仓库的 Actions 中手动运行 **WeChat 8.0.78 Zygisk**，下载 `FingerprintPay-WeChat-8078-Zygisk` 工件并解压出 ZIP。保留原模块 ID，理论上可在 Magisk 中刷入覆盖旧版；请先备份原模块配置和旧 ZIP，在测试设备上验证设置入口、普通支付、小程序支付、取消支付和失败回退后再用于日常支付。不要在测试中向任何人提供支付密码。

此仓库保留原项目许可证与作者信息。默认上游自动更新地址已对个人构建停用，以免被上游旧版覆盖。
