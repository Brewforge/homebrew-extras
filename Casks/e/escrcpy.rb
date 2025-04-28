cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.29.6"
  sha256 arm:   "1cdb7bc0b078b974f82b9cccaee279184372e4d38d2ca5c6fbb37745a6dd02b6",
         intel: "8e5f8fdc5bb8a49fe5c55996c771443ed4e4f2903dea4464938bcfdf23c61339"

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
