cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.4"
  sha256 arm:   "7bf1e772d7ef513ec1a4a844697ce9a598e3f3bcba583115f22bc923240741b5",
         intel: "30ff6aad9c3b855b5530c66b246d7ec4522034654fd21365193e42c3d6ba56b4"

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
