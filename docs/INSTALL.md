# Install and use MDM

## Download

macOS 13 or later on Intel (x64) or Apple Silicon (arm64/M-series) Macs.

Open the [MDM GitHub Releases](https://github.com/mollaomar991/Mac_download_Manager-MDM/releases) page
and download **MDM-0.1.0-macOS-arm64.dmg** (Apple Silicon) or **MDM-0.1.0-macOS-x64.dmg** (Intel).
You do not need a GitHub account, Git, Node.js, or a terminal to install the application. Do not download
the automatically generated "Source code" archives to install it.

The installer is currently unsigned. macOS may show an unverified developer warning.
Right-click the DMG and choose **Open**, then confirm when prompted.

Open the DMG and drag **MDM** into your **Applications** folder.
Launch **MDM** from Applications or Spotlight.

## Enable video buttons (Chrome / Edge / Brave)

The browser extension adds **Download this video** buttons to supported web
videos. It is included with the installed application; you do not need to download
a separate ZIP or visit GitHub again. Until our browser-store listing is published,
add it once to each browser you use:

1. The app shows **Browser integration** on first launch. You can also open it
   from the toolbar later.
2. In **MDM**, click **Copy extension folder path**. This copies
   the location of the extension that came with the app. It is **not** the folder
   where your downloaded videos will be saved.
3. Click **Open Chrome extensions** or **Open Edge extensions** in the app.
   Your browser opens its **Extensions** page. If the button cannot find your
   browser, type `chrome://extensions` in Chrome's web address bar, or
   `edge://extensions` in Edge's web address bar, then press **Enter**.
4. On the browser's Extensions page, switch on **Developer mode**. In Chrome it
   is usually at the upper right. In Edge, check the left sidebar; expand the menu
   if the sidebar is hidden.
5. Click **Load unpacked** on the Extensions page. This opens a **folder
   selection dialog**.
6. Press **Cmd+Shift+G** to enter a folder path. Paste the extension folder path
   copied in step 2, then press **Enter**.
7. Click **Select Folder** (some versions say **Select**) to confirm.
   Choose the **extension folder itself**, not a file inside it
   and not its `icons` subfolder.
8. The browser's Extensions page should now show **MDM Integration**.
   Make sure its switch is on. Leave Developer mode on while using
   this unpacked preview extension.
9. Return to **MDM**. The Browser integration panel checks
   automatically and shows the browser connection message. No extension ID or
   commands need to be entered.
10. Return to the video website, refresh the page, and play the video briefly.
    Look for **Download this video**, then follow the download steps below.

### Which folder should I choose?

The exact location for your computer is displayed under **Included browser
extension folder** in the app. A normal installed copy uses:

`/Users/YOUR-USERNAME/.mdm/BrowserIntegration/extension`

That path is an example; **Copy extension folder path** copies your actual path
with your own username. **Show extension folder** opens that folder in
Finder if you want to inspect it. It contains `manifest.json` and an
`icons` folder. You select the enclosing `extension` folder, not `manifest.json`.
Do not move or delete this folder after loading it into your browser.

### If setup does not work

- **"Manifest file is missing or unreadable":** Cancel the folder selection and
  copy the path from MDM again. Select the folder containing
  `manifest.json`, not the app's installation folder, Downloads, or `icons`.
- **No connection message:** Keep the app running, confirm the extension is
  switched on in the same browser you set up, then click **Refresh browsers** in
  the app. Reload the extension on the browser's Extensions page and retry.
- **No video button:** Refresh the video page after setup and start playback.
  Some sites and protected media are not supported.
- **No Developer mode or Load unpacked button:** A workplace or school may
  restrict extension installation. Ask its administrator about permitted setup.

Only install the extension if you trust this project. Its page/network permissions
allow it to detect media and hand the selected media session to the desktop app.
Firefox does not yet have equivalent verified YouTube support.

## Download a file or video

- For a file link, use **Add URL** in the app.
- For a supported video, play it briefly, click **Download this video**, and select
  a quality such as 1080p. Only download content you are permitted to save.
- In **Download File Info**, choose a name, folder, and category. Choose
  **Start Download**, **Download Later**, or **Cancel**.
- Start Download opens progress. On completion, use **Open** or **Open folder**.
- Repeated clicks reuse the active download. Cancel closes the progress window.

Closing the main window keeps the app in the tray. Use **Tasks → Exit** to quit.
Paused/queued YouTube sessions may expire; reselect the video in the browser if
resuming later fails. DRM, private/sign-in-required videos, and live streams are
not supported. Slow YouTube transfers remain a known limitation.

## Updates and uninstall

Quit the app before installing a newer release. After updating, reload the
extension on the browser's extensions page and refresh your video tabs.

Uninstall by dragging **MDM** from Applications to Trash. Remove the browser extension
separately. Downloads and the `.mdm` folder in your home directory are not
automatically deleted. There is no automatic updater yet.
