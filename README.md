# NewPipe Snapdragon 435 / Legacy Fix 🚀

<h3 align="center">We are <i>rewriting</i> large chunks of the codebase, to bring about <a href="https://newpipe.net/blog/pinned/announcement/newpipe-0.27.6-rewrite-team-states/#the-refactor">a modern and stable NewPipe</a>! You can download nightly builds <a href="https://github.com/TeamNewPipe/NewPipe-refactor-nightly/releases">here</a>.</h3>
<h4 align="center">Please work on the <code>refactor</code> branch if you want to contribute <i>new features</i>. The current codebase is in maintenance mode and will only receive <i>bugfixes</i>.</h4>

<p align="center"><a href="https://newpipe.net"><img src="assets/new_pipe_icon_5.png" width="150"></a></p> 
<h2 align="center"><b>NewPipe: Hardware Acceleration Fix (SD435/Legacy)</b></h2>
<h4 align="center">A libre lightweight streaming front-end for Android, optimized for older chipsets.</h4>

<p align="center">
<a href="https://github.com/AmmarDeeper34/NewPipe-Legacy-Fix/releases" alt="GitHub NewPipe releases"><img src="https://img.shields.io/github/release/AmmarDeeper34/NewPipe-Legacy-Fix.svg" ></a>
<a href="https://www.gnu.org/licenses/gpl-3.0" alt="License: GPLv3"><img src="https://img.shields.io/badge/License-GPL%20v3-blue.svg"></a>
<a href="https://github.com/AmmarDeeper34/NewPipe-Legacy-Fix" alt="Build Status"><img src="https://img.shields.io/badge/Build-Success-success.svg"></a>
<a href="https://github.com/AmmarDeeper34/NewPipe-Legacy-Fix" alt="Platform"><img src="https://img.shields.io/badge/Platform-Android_6.0+-brightgreen.svg"></a>
</p>

<p align="center">
<a href="https://web.libera.chat/#newpipe" alt="IRC channel: #newpipe"><img src="https://img.shields.io/badge/IRC%20chat-%23newpipe-brightgreen.svg"></a>
<a href="https://matrix.to/#/#newpipe:matrix.newpipe-ev.de" alt="Matrix channel: #newpipe"><img src="https://img.shields.io/badge/Matrix%20chat-%23newpipe-blue"></a>
</p>

<hr>
<p align="center">
  <a href="#-the-problem">The Problem</a> &bull; 
  <a href="#-what-is-in-this-patch">What's in the Patch</a> &bull; 
  <a href="#-features-of-this-fix">Key Features</a> &bull; 
  <a href="#-testing-guide">Testing Guide</a> &bull; 
  <a href="#-how-to-build-from-source">Build Instructions</a> &bull; 
  <a href="#-credits--acknowledgments">Credits</a>
</p>
<hr>

## 🛠 The Problem
Modern NewPipe versions often crash or lag on legacy devices because current settings are too aggressive for slow eMMC storage and older GPUs struggle to decode high-bitrate WebM. This build specifically addresses the **"Hardware Acceleration Render Error"** that causes black screens or crashes on devices like the **Huawei P9 Lite, Honor 6X, and Galaxy J7**.

## 🛠 What is in this Patch?
I have hardcoded internal resource arrays to force the app into a "Safe Mode" optimized for the Snapdragon 435/430:
* **Forced MPEG-4 (H.264):** Bypasses the VP9/WebM codec which causes GPU hangs on older chips.
* **Resolution Cap (720p):** Prevents the app from trying to render 1080p/4K which triggers thermal crashes.
* **Dependency Restoration:** Fixed the `public.xml` errors that usually break custom NewPipe builds.

## ✨ Features of this Fix (Legacy Engine)
Modified core components ensure smooth playback on hardware with limited resources:
* **✅ 720p/30fps Resolution Cap:** Automatically filters out 1080p, 4K, and 60fps streams to prevent GPU overheating.
* **✅ Enhanced Buffering:** Increased `LoadControl` minimum buffer to **50 seconds** to prevent playback pauses on slow networks.
* **✅ Large Heap Allocation:** Enabled `android:largeHeap` in the Manifest to prevent Out-of-Memory (OOM) crashes on 2GB RAM devices.
* **✅ Snapdragon 435 Filtering:** Hardcoded logic to prefer MPEG-4 (H.264) over VP9 for hardware-accelerated decoding.
* **✅ Full Feature Parity:** Includes **Search, Bandcamp, and SoundCloud** support fully restored.

## 🧪 Testing Guide (I need your help!)
**Status: ALPHA - UNTESTED**. Since I do not currently have the physical hardware to test this, please follow these steps:
1. **Uninstall** official NewPipe first to avoid signature conflicts.
2. Download the `patched-aligned-debugSigned.apk` from the **Releases** tab.
3. Open a high-motion video and **report back** by creating an "Issue" if:
   * The app crashes on startup.
   * You see a "Video Not Available" error.
   * The phone gets unusually hot.

## 🏗 How to Build from Source (1)
Due to memory constraints in cloud environments (like GitHub Codespaces), use the following **"Low Memory"** command:
```bash
./gradlew assembleDebug --no-daemon -Dorg.gradle.parallel=false -Dorg.gradle.jvmargs="-Xmx512m" -x runCheckstyle

## 🛠 How to Contribute / Build from Source (2)
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
- **GitHub Copilot (AI Pair Programmer)**: Acted as the **Code Engineer**. It assisted in real-time within the IDE to fix syntax errors in ListHelper.java and LoadController.java, ensured Javadoc compliance to pass Checkstyle tests, and helped write the Gradle build script for low-memory environments.
