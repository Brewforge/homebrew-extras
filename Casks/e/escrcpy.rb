cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.26.2"
  sha256 arm:   "0eb7466ec2944cfc9f6fbdd0642d823bc635fbef773fbb3c2beaf7fc20a73b2b",
         intel: "c82d6dd3393549d1292fe10b9e98b072fb3408b1f4b92680c95290d1bac40bd1"

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
