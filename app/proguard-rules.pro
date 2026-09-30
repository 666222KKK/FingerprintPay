# Shrink unreachable code while preserving reflective names and behavior.
-dontobfuscate
-dontoptimize
-keepattributes Signature,*Annotation*,InnerClasses,EnclosingMethod,SourceFile,LineNumberTable
-keep @androidx.annotation.Keep class * { *; }
-keepclassmembers class * { @androidx.annotation.Keep <methods>; @androidx.annotation.Keep <fields>; }
# JNI loads this class and the two-String static main method by name.
-keep class com.surcumference.fingerprint.plugin.magisk.WeChatPlugin { *; }
# Injected UI and Gson fields are outside APK manifest reachability.
-keep class com.surcumference.fingerprint.view.** { *; }
-keep class com.surcumference.fingerprint.bean.** { *; }
-keep class com.surcumference.fingerprint.network.update.github.bean.** { *; }
-keep class com.hjq.toast.** { *; }
# Xposed APIs are optional host-provided dependencies, unused by Zygisk.
-dontwarn de.robv.android.xposed.**

# Legacy Samsung vendor framework classes are supplied only by Samsung devices.
-dontwarn com.samsung.android.fingerprint.**
