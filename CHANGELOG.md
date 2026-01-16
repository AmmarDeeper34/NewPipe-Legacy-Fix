---

### 2. Updated `CHANGELOG.md`
This file tracks the specific technical journey you just went through to get the build to work.

```markdown
# Changelog - NewPipe Legacy Fix

## [v0.28.1-Legacy-v1.0] - 2026-01-16

### 🚀 Added
- **Legacy Engine:** Integrated a custom `LoadControl` with a 50,000ms (50s) safety buffer.
- **Hardware Optimization:** Added `android:largeHeap="true"` to `AndroidManifest.xml` for better stability on 2GB RAM devices.
- **Stream Filtering:** Added logic to `ListHelper.java` to cap resolution at 720p and 30fps for smoother UI performance.

### 🔧 Fixed
- **Source Restoration:** Fixed critical issues where `ListHelper.java` and `AndroidManifest.xml` were truncated/incomplete.
- **ExoPlayer Compatibility:** Resolved "Cannot find symbol" errors in `LoadController.java` by updating `setBufferMs` to match modern ExoPlayer Builder API.
- **Build System:** Implemented a low-memory build strategy (`--no-daemon`) to allow compilation in restricted RAM environments (Codespaces).
- **Javadoc Compliance:** Fixed Checkstyle violations in `LoadController.java` by adding proper `@return` and `@param` tags.

### ⚠️ Known Issues
- Build may crash if run without the `-Xmx512m` flag on free-tier Codespaces.
- Some 60fps icons may still show in the UI, but the engine will correctly fallback to 30fps streams.
