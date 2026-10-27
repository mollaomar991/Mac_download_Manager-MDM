import Cocoa
import SafariServices

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Prompt user to enable the extension in Safari
        SFSafariApplication.getStateOfSafariExtension(withIdentifier: extensionBundleIdentifier) { (state, error) in
            guard let state = state, error == nil else {
                return
            }
            DispatchQueue.main.async {
                if state.isEnabled {
                    self.setStatus("The extension is enabled in Safari.", color: .systemGreen)
                    self.setButtonEnabled(false)
                } else {
                    self.setStatus(
                        "The extension is not enabled in Safari. Enable it in Safari → Preferences → Extensions.",
                        color: .systemOrange
                    )
                    self.setButtonEnabled(true)
                }
            }
        }
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: extensionBundleIdentifier) { error in
            if let error = error {
                DispatchQueue.main.async {
                    self.setStatus("Error opening Safari preferences: \(error.localizedDescription)", color: .systemRed)
                }
            }
        }
    }

    func setStatus(_ message: String, color: NSColor) {
        if let label = window?.contentView?.viewWithTag(1) as? NSTextField {
            label.stringValue = message
            label.textColor = color
        }
    }

    func setButtonEnabled(_ enabled: Bool) {
        if let button = window?.contentView?.viewWithTag(2) as? NSButton {
            button.isEnabled = enabled
        }
    }
}

let extensionBundleIdentifier = "com.mdm.downloader.safari.Extension"
