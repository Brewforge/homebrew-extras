cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.8.1"
  sha256 arm:   "7b36975efdff8e1896e69ac35a51cc5ed922e92ca871595301a2a57245a6a3b1",
         intel: "41b114a91d53f6e2cc544edeb36baddf05ebad459085f12718c972506bc0c722"

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
