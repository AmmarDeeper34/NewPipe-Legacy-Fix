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

## 📥 Downloads
Check the [Latest Release](link-to-your-release-here) for the APK.
