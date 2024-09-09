cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.23.4"
  sha256 arm:   "a38bb19b85af49228b36d4abc527596e986114bc71024ed5ef5652836b783f77",
         intel: "87e4397a420b147c5c1e7acf6a4d36c0fa4463ba69c17d39b5f84ea879a09720"

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
