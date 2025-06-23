cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.29.8"
  sha256 arm:   "f9d9889e0c5cb3e3eecbe19f4735af6bcbb21fa2f7f8d970d294b186f7a2fcba",
         intel: "25c87e6c8f72acb910df3ef3c14853edd6230cdbd10550bbd1bed5f154206dd2"

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
