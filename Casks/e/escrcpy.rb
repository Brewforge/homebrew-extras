cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.26.3"
  sha256 arm:   "9f733c57d501998ecbc426ccec90e04edfa6b2560d9bab48647706c8f1f3de1d",
         intel: "fc5dcb246c01d2711e215548eefbad1ce0873135fa4ad2aca3edc42c5eb8fdb5"

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
