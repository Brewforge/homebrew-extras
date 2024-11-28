cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.3"
  sha256 arm:   "4716103364cda9f557da963a6e196c39a5a30613650ea2f3dfb7f7e9763e3b62",
         intel: "a7485e50a5337e07cf807632fa1f76658ca244f2fe488ced364a3d66922b9e13"

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
