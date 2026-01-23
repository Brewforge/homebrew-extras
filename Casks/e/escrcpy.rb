cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "de97862eeec486ffa05de05ecce421891c1475c8970dc89c2f06e5e4781b702a",
         intel: "005fbccc22237c75f0be7b7f5186d71c4a25fa365334342d41de50cebc93cf4d"

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
