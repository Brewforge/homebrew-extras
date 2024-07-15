cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.21.4"
  sha256 arm:   "3f8a3351e3f32c837f35494ac51eab556cdb71afc023cb184a5ead2e103fd326",
         intel: "55d4e38094e9f4a91013ee7a05c89856809b4250e86bf8d6a25ede7743b64da6"

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
