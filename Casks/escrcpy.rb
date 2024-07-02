cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.19.4"
  sha256 arm:   "f2823953d4b3f1769ada82a1d04cf8e76a41e469eced8dea1a4944482e789f09",
         intel: "636cc6b706abe4427815b0fbd95070fa0da336267647ea684e3e4fda3c80832c"

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
