cask "svstudio2-pro" do
  version "2.0.7"
  sha256 :no_check

  url "https://download.dreamtonics.com/svstudio2/svstudio2-pro-setup-latest.pkg"
  name "Synthesizer V Studio 2 Pro"
  desc "AI-based singing voice synthesis software"
  homepage "https://dreamtonics.com/synthesizerv/"

  pkg "svstudio2-pro-setup-latest.pkg"

  uninstall pkgutil: [
    "com.dreamtonics.svstudio2.aaxplugin",
    "com.dreamtonics.svstudio2.auplugin",
    "com.dreamtonics.svstudio2.pro",
    "com.dreamtonics.svstudio2.vst3plugin",
  ]

  zap trash: [
    "~/Library/Application Support/Dreamtonics/Synthesizer V Studio 2",
    "~/Library/Caches/com.dreamtonics.svstudio2.pro",
    "~/Library/HTTPStorages/com.dreamtonics.svstudio2.pro",
    "~/Library/HTTPStorages/com.dreamtonics.svstudio2.pro.binarycookies",
    "~/Library/Preferences/com.dreamtonics.svstudio2.pro.plist",
    "~/Library/WebKit/com.dreamtonics.svstudio2.pro",
  ]
end
