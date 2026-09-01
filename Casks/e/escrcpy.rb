cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "cb201c25c819c5d942ebefd8e21fef6280a241927feebba2c092a11b92768ac4",
         intel: "bba0dba3b4a26a12b52d2caa6c623018250d201e893f4533c37c5dd635ea7efe"

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
