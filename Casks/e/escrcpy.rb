cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.2"
  sha256 arm:   "cf66b69da0a4518816b033265210f7533a49c9c37926effb4e6e8fcef44c45de",
         intel: "3bc6275e767d3bd5c3a460d42d8bc0da7cd7e6ceb567d4ccb56bd38ee25df74c"

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
