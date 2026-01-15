# NewPipe Snapdragon 435 Fix

[![Build Status](https://img.shields.io/badge/Build-Success-success.svg)](https://github.com/YOUR_USERNAME/YOUR_REPO/releases)
[![Platform](https://img.shields.io/badge/Platform-Android_6.0+-brightgreen.svg)](https://github.com/YOUR_USERNAME/YOUR_REPO)
[![Status](https://img.shields.io/badge/Status-Seeking_Testers-orange.svg)](https://github.com/YOUR_USERNAME/YOUR_REPO/issues)
[![License](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

---
# NewPipe-Legacy-Fix
# NewPipe: Hardware Acceleration Fix (SD435/Legacy)

**Status: ALPHA - UNTESTED**
**Target Devices:** Huawei P9 Lite, Honor 6X, Galaxy J7, and other Snapdragon 435/430 devices.

This is a specialized build of NewPipe 0.28.1. It is designed to fix the "Hardware Acceleration Render Error" that causes the app to crash or show a black screen on older Android 6.0/7.0 devices.

## 🛠 What is in this Patch?
I have hardcoded the internal resource arrays to force the app into a "Safe Mode":
- **Forced MPEG-4 (H.264):** Bypasses the VP9/WebM codec which causes GPU hangs on older chips.
- **Resolution Cap (720p):** Prevents the app from trying to render 1080p/4K which triggers thermal crashes.
- **Dependency Restoration:** Fixed the `public.xml` errors that usually break custom NewPipe builds.

## 🧪 Testing Guide (I need your help!)
Since I do not currently have the physical hardware to test this, please follow these steps:
1. **Uninstall** official NewPipe first (Signatures will conflict).
2. Download the `patched-aligned-debugSigned.apk` from the **Releases** tab.
3. Open a high-motion video (like a 60fps gaming video).
4. **Report back:** Create an "Issue" on this Github if:
   - The app crashes on startup.
   - You see a "Video Not Available" error.
   - The phone gets unusually hot.

## 📜 License
This project is a fork of [NewPipe](https://github.com/TeamNewPipe/NewPipe) and is licensed under the **GNU General Public License v3.0**. You are free to share, modify, and distribute this version under the same terms.

## 📥 Downloads
Check the [Latest Release](link-to-your-release-here) for the APK.

## 🛠 How to Contribute / Build from Source
If you are a developer and want to improve this patch or update it for future NewPipe versions, follow these steps:

1. **Decompile:** Use `apktool d NewPipe_vX.X.X.apk`.
2. **Apply Patches:** - Modify `res/values/arrays.xml` to restrict resolutions and force H.264.
   - Modify `res/xml/video_audio_settings.xml` to change `android:defaultValue` to safe values.
3. **Rebuild:** `apktool b original_folder -o patched.apk`.
4. **Sign:** Use `uber-apk-signer` to align and sign the resulting binary.

**Current Goal:** I am looking for someone to help automate these XML injections using a Python script or GitHub Actions to make updates faster!

## 🤝 Credits & Acknowledgments
**Lead Developer:** Ammar (AmmarDeeper34])
- **Original Project:** [NewPipe](https://github.com/TeamNewPipe/NewPipe)
- **Technical Assistance:** This patch was developed with the help of **Gemini (Google AI)** to identify hardware-compatible codecs and resolve complex `public.xml` build conflicts.
