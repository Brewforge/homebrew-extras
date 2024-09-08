cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.23.2"
  sha256 arm:   "ebe00022bc6665d4eab8ba1fb029f811ba5846443c74d6bf7468cffc5d435034",
         intel: "422648735e0d373d2ca7904303ce6389530df31fd3298a47fc13d3959966e867"

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
