# MDM – Safari Extension

This is a Safari Web Extension that provides the same browser integration as the Chrome/Firefox extension,
adapted for Safari on macOS Ventura (Intel & Apple Silicon).

## Requirements

- **macOS 13.0+** (Ventura or later)
- **Xcode 14+** — [Download free from the App Store](https://apps.apple.com/app/xcode/id497799835)
- MDM desktop app installed

## How to Build & Install

### 1. Install Xcode
Download Xcode from the Mac App Store (it's free). This is a one-time step.

### 2. Open the project in Xcode
```
open MDMSafari.xcodeproj
```

### 3. Build & Run
- Press **⌘R** (or Product → Run)
- Xcode will build and launch a small helper app

### 4. Enable in Safari
- Open **Safari → Settings → Extensions**
- Find **"MDM Integration"** and toggle it **On**
- Grant permissions when asked (allow access to websites)

### 5. Register native messaging
The extension communicates with the desktop app via native messaging.
In the **MDM** desktop app:
- Go to **Browser Integration**
- Click **Refresh Browsers** / **Register Safari**

## What the Extension Does

| Feature | Status |
|---------|--------|
| Detect video/audio media on pages | ✅ |
| YouTube video download (MP4/MP3) | ✅ |
| HLS stream detection | ✅ |
| Right-click "Download with MDM" | ✅ |
| Intercept browser downloads | ✅ |
| DASH streams | ❌ Unsupported (same as Chrome) |

## Project Structure

```
MDMSafari/
├── MDMSafari.xcodeproj/   ← Open this in Xcode
├── MDMSafari/             ← macOS wrapper app (Swift)
│   ├── AppDelegate.swift
│   ├── Info.plist
│   └── MDMSafari.entitlements
└── Extension/                           ← Safari Web Extension
    ├── SafariWebExtensionHandler.swift
    ├── Info.plist
    ├── Extension.entitlements
    └── Resources/                       ← All JS/HTML/CSS files
        ├── manifest.json
        ├── background.js
        ├── content.js
        ├── popup.html / popup.js / popup.css
        ├── youtube-media.js
        └── icons/
```

## Troubleshooting

**"Cannot find MDM" in Safari extension**
→ Make sure the desktop app is running and you clicked "Register Safari" in Browser Integration settings.

**Extension not showing in Safari**
→ Safari → Settings → Advanced → check "Show Develop menu", then Develop → Allow Unsigned Extensions

**Permission denied errors**
→ In Safari Extensions settings, make sure the extension has permission for "All Websites"
