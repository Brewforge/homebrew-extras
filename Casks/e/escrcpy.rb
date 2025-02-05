cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.28.4"
  sha256 arm:   "c8b2963fab435c74f3b1d8d1d884a3ef499f035edeb8824e70b9cb5d2e0398f8",
         intel: "cdaec02014bb934fbf8f78bb9f9032d3e625e7860ae4a7baafdb7b695b809107"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
