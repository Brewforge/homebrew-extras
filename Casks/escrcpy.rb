cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.21.3"
  sha256 arm:   "b7474f260465cee343f719394b8536b25dc12423e186db4f7ed38a4f29733050",
         intel: "00336e7a7aa1c255daabebe918e438e7ee4a06cd0b7c29a11b166499e77d80b2"

  mirror = "https://mirror.ghproxy.com/"
  origin = "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"

  url "#{mirror}#{origin}",
      verified: "mirror.ghproxy.com/"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url origin.to_s
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
