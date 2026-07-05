# YNR-Games Android Customization Guide

## Overview

This document covers all Android customization for YNR-Games.

## Files Modified/Created

### 1. **android/app/build.gradle**
- Package: `com.ynr.games`
- App Name: `YNR-Games`
- Version Code: `10000`
- Version Name: `1.0.0`
- Min SDK: 21 | Target SDK: 34
- Supported ABIs: arm64-v8a, armeabi-v7a, x86, x86_64

### 2. **android/app/src/main/AndroidManifest.xml**
- Package name configured to `com.ynr.games`
- App label set to `@string/app_name` (YNR-Games)
- Permissions configured for emulator functionality
- Activities configured for full-screen emulation

### 3. **android/app/src/main/res/values/strings.xml**
- App strings in English
- About dialog with YNR-Games branding
- Menu labels and descriptions
- GitHub repository link

### 4. **android/app/src/main/res/values/colors.xml**
- Primary: #FF6B35 (Orange)
- Secondary: #004E89 (Dark Blue)
- Accent: #F7B32B (Gold)
- Dark theme colors for modern appearance

### 5. **android/app/src/main/res/values/styles.xml**
- Material Design 3 theme
- Dark theme for gaming
- Full-screen style for emulator
- Brand colors integrated

## Next Steps

1. **Download Assets**
   - App Icon (192x192 minimum)
   - Splash screen
   - Banner images

2. **Create drawable resources**
   ```
   android/app/src/main/res/
   ├── drawable/
   ├── drawable-hdpi/
   ├── drawable-xhdpi/
   ├── drawable-xxhdpi/
   └── drawable-xxxhdpi/
   ```

3. **Build and Test**
   ```bash
   ./build-scripts/build-android.sh
   ```

4. **Sign for Release**
   - Create keystore: `keytool -genkey -v -keystore keystore/ynr-games.keystore ...`
   - Configure signing in build.gradle

## Build Commands

```bash
# Debug build
cd android && gradle assembleDebug

# Release build
cd android && gradle assembleRelease

# Install on device
adb install -r app/build/outputs/apk/debug/app-debug.apk
```

## Branding Summary

- **App Name**: YNR-Games
- **Package**: com.ynr.games
- **Primary Color**: #FF6B35 (Orange)
- **Theme**: Material Design 3 Dark
- **Version**: 1.0.0
- **Min API**: 21 (Android 5.0)
- **Target API**: 34 (Android 14)

---

**Last Updated**: 2026-07-05
**Maintained By**: Yanier Ruiz
