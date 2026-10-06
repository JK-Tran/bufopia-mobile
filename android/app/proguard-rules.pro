# Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Keep common annotations and reflection attributes
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses
-keepattributes EnclosingMethod

# Firebase
-dontwarn com.google.firebase.**
-keep class com.google.firebase.** { *; }

# Play Core (Deferred Components referenced by Flutter embedding)
-dontwarn com.google.android.play.core.**
