cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.25.4"
  sha256 arm:   "cb94d9862ffa8af8439bc4dd82d5e48dafbb87d6172a2ed6655f0508aa8574c9",
         intel: "b080a597548486cfaf8abcd2e6d696fdbf2c7285ee17c6a509949c7b1958d384"

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
