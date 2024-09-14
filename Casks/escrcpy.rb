cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.24.0"
  sha256 arm:   "91f79860e6a3795a87edddda48cdbfaefe4f669bba5920af473c9f874a66c208",
         intel: "ea41c977aebbc30940ebbd3b675791ed7bc29ca8e59f680cd59f6f380ac60a5c"

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
