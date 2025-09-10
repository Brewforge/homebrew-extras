cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.32.1"
  sha256 arm:   "86eae4b79fe09d9857d7f47bcf37ef71f20fecdac80ee7abf583c513472c5aaa",
         intel: "b228afe944ff761c4b96c8395655502eebcf625434a70e3930a180bc91d5ced2"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
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
