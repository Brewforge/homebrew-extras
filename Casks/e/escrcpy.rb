cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "8830e6001a3ef74890afae3bf52ee839376212626ae2031f0d7f9b5e41cca4f5",
         intel: "5d4729366eb7ca34a8df6f85cdf082a4853d96ac70ec7291dcc65bdacb179257"

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
