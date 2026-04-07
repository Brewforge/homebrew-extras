cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "33c5602e5b948a5801088652177535cc8730a68b7a992b7434a419f80ada6e30",
         intel: "cf3435f3d77a3425c4ad0dd33e5a922500cb95022d1a41a96b1b94fd760a73da"

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
