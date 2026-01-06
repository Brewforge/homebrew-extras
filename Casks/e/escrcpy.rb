cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.34.2"
  sha256 arm:   "19a6dc21c6b0cc848b5e4825081cfbb866e79e46c6a1d5487836a79578d6b1a7",
         intel: "d0b4b122722b0fcf733f4e21eb3767425cc87e6804c3c552fb89b08a3544571b"

  url "https://github.com/viarotel-org/escrcpy/releases/download/workspace-v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
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
