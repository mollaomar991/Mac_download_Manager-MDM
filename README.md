# MDM (Mac Download Manager)

A fast, lightweight download manager for macOS featuring multi-connection segmented transfers, pause & resume support, and browser integration.

Built for **macOS Ventura (13.0+) and later**, supporting both **Intel (x86_64)** and **Apple Silicon (arm64)** processors.

---

## ✨ Features

- **⚡ Multi-Segment Transfers:** Splits large downloads into multiple concurrent connections to maximize your download speed.
- **⏯️ Pause & Resume Support:** Safe pause and resume with HTTP Range requests (`Accept-Ranges` and `ETag`/`Last-Modified` validation).
- **📹 Video & Stream Capture:** Download YouTube videos and HLS (`.m3u8`) video streams with automatic ffmpeg muxing.
- **🌐 Browser Extensions:** Integration with Google Chrome, Microsoft Edge, Brave, Firefox, and Apple Safari.
- **⏱️ Download Scheduler:** Schedule downloads to start automatically at specific dates and times.
- **🚀 Speed Limiter:** Set global download bandwidth limits so downloads don't saturate your internet connection.
- **🗂️ Categories & Organization:** Auto-sort downloads into Video, Audio, Archives, Documents, Programs, and more.

---

## 📥 Installation

### Option 1: Install Pre-built DMG (Intel x64)

1. Go to the [Releases](https://github.com/mollaomar991/Mac_download_Manager-MDM/releases) tab or look in the `release/` folder for `MDM-0.1.0-macOS-x64.dmg`.
2. Double-click the DMG file to mount it.
3. Drag **MDM** into your **Applications** folder.
4. Launch **MDM** from Applications or Spotlight.

> **Note for macOS Gatekeeper:**  
> If macOS says *"MDM cannot be opened because the developer cannot be verified"*:  
> Go to **System Settings → Privacy & Security**, scroll down to the Security section, and click **Open Anyway**.

---

## 🧩 Browser Integration

### Chrome / Brave / Microsoft Edge
1. In MDM, click **Browser Integration** in the toolbar.
2. Open your browser's extensions page (`chrome://extensions` or `edge://extensions`).
3. Turn on **Developer mode** (top right).
4. Click **Load unpacked** and select the `extension/` folder from this repository.
5. In MDM, click **Refresh browsers** to register the native messaging connector.

### Safari
The native Safari Web Extension project is located in `safari-extension/`:
1. Open `safari-extension/MDMSafari/MDMSafari.xcodeproj` in Xcode.
2. In Xcode, set your signing team in **Signing & Capabilities**.
3. Build and run (Cmd+R).
4. Open **Safari → Settings → Extensions**, enable Developer mode if needed, and check **MDM Integration**.

---

## 🛠️ Building from Source

### Prerequisites
- macOS 13.0+ (Ventura or newer)
- Node.js v20 or v22
- npm

### Setup & Run Locally
```bash
# Clone the repository
git clone https://github.com/mollaomar991/Mac_download_Manager-MDM.git
cd Mac_download_Manager-MDM

# Install dependencies
npm install

# Start in development mode
npm start
```

### Build Installers (DMG)
```bash
# Build DMG for Intel (x86_64)
npx electron-builder --mac dmg --x64 --publish never

# Build DMG for Apple Silicon (arm64)
npx electron-builder --mac dmg --arm64 --publish never
```

Built DMGs will be created in the `release/` directory.

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
