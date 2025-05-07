cask "svstudio2-pro" do
  version "2.0.7"
  sha256 "c5bdeaee2e30bf15340c976fcffa0bed8e80c0b444fa18e0b509e169cb8c0985"

  url "https://download.dreamtonics.com/svstudio2/svstudio2-pro-setup-latest.pkg"
  name "Synthesizer V Studio 2 Pro"
  desc "AI-based singing voice synthesis software"
  homepage "https://dreamtonics.com/synthesizerv/"

  pkg "svstudio2-pro-setup-latest.pkg"

  uninstall pkgutil: [
    "com.dreamtonics.svstudio2.pro",
    "com.dreamtonics.svstudio2.auplugin",
    "com.dreamtonics.svstudio2.vst3plugin",
    "com.dreamtonics.svstudio2.aaxplugin"
  ]

  zap trash: [
    "~/Library/Application Support/Dreamtonics/Synthesizer V Studio 2",
  ]
end
