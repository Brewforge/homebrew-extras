cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.24.3"
  sha256 arm:   "5d38b35f9a4851d5076bebb1051f4d87133c4003019f3a560e2b9761c06174a4",
         intel: "37d8f9b2bfc5f21c33e0d8fa1c3fd8ef65079cab06960b6c7699820431a5810a"

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
