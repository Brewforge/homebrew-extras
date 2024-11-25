cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.27.1"
  sha256 arm:   "26345c5dac30d8f3af3ab605ed377f5ea862f9bb8256b1cef31eb1c5811d7811",
         intel: "2bed5b1445e62a9a16b9203ee7364be66032e93a1386141bd2e943c45843fe20"

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
