MDM Icon Assets
===============

Included:
- build/icon.icns       macOS app icon file (ICNS container)
- assets/app-icon.png   1024x1024 app icon PNG
- extension/icons/icon16.png
- extension/icons/icon32.png
- extension/icons/icon48.png
- extension/icons/icon128.png

Design: dark navy background, blue ribbon M mark, white MDM wordmark on larger icons.
The 16/32/48 browser extension icons use the symbol alone for legibility.

Note: ICNS files are best generated on macOS using Apple's iconutil. If you need a guaranteed
native ICNS bundle, run:
  iconutil -c icns build/icon.iconset -o build/icon.icns
from the included icon.iconset directory on a Mac.
