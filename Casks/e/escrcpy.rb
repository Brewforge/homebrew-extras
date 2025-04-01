cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.29.2"
  sha256 arm:   "7af31a0263404dd268a06fba7880c290e10ce29902ab03731ee55644933722a7",
         intel: "bc1731ae845a0fa4ff926cd589b2bd05892357b2ffc157e165bd1434440a868c"

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
