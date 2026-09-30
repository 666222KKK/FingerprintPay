# 微信 8.0.78（3180）个人构建

基于上游 5055421，包含 WxaLiteAppPayTransparentLiteUI 支付窗口适配。版本为 6.1.0-8078，版本码 38，保留微信 Zygisk 模块 ID。

构建分支提交后自动运行 WeChat 8.0.78 Zygisk 工作流，检查安装脚本、ARM/ARM64 ELF 库、8.0.78 适配代码及 ZIP 内 SHA-256 校验文件。下载 FingerprintPay-WeChat-8078-Zygisk 工件后，解压出内层模块 ZIP，在 Magisk 中安装。

目标 APK 为 com.tencent.mm，8.0.78（3180），SHA-256：41f7dc1f720767fa78fa20dd13ea034b817bbf6ebd23dfd1324c647499c9c1ba。

构建检查不能替代真机测试。设置入口、普通支付、小程序支付、取消支付和失败回退需要在设备上验证。上游自动更新地址已停用，避免旧版覆盖本构建。保留原项目许可证与作者信息。
