cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.10.2"
  sha256 arm:   "f01b2a85723bc9feda442dece5dcf0f141d2e1af5b5765303534f8546eaf5dbe",
         intel: "d7551a6547ba077bb3e968a249d9a6bd89e6dfcf76197ee961738da88ebc80fb"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
