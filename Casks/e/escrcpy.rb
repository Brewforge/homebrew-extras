cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "c29f649915d1c11d4f749bcc33c6a4e5ff12733ccd6ffd789efc47cc576e2958",
         intel: "a439e61fde6fc17afbe1a4e25215748f41c16c9b6f445504dcea358cfbae6b2c"

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
