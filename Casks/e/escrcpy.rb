cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "9f46fb7199c2666cc7ab73851a2dc5b7aa15942782f89d118eaffb906208eb0c",
         intel: "e14dcd10247f94671083dc74f520cff4e92d045244c41b609f9346fd04b1fec5"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
