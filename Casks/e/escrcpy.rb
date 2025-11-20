cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.33.0"
  sha256 arm:   "f84bcf327c0ee39f3068dc5c387cfbd7c34006a6348009469915d40a45070b10",
         intel: "53e846e540df565b1f195a3244ad672028c2b3809c7186ad2d48a176ac437347"

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
