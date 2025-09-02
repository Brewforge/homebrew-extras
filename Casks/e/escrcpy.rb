cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.31.3"
  sha256 arm:   "53d19ed1dafc80beaade3eba49b20495c912c1020e33c020984c40ed9c1f149b",
         intel: "48d45cad4249e5925d6d1ec06647c0ce7c4831a7142cbeb99904518476aadbd2"

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
