cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.7.3"
  sha256 arm:   "9e0acb0ca1edb0939e005ba2b619677469958081698b9b3022d254f6c0ea8ea8",
         intel: "df3906ac5be553752a85b50e53318cc524557e0afb27342d9334aadbf0d5c5a3"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">=:big_sur"

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
