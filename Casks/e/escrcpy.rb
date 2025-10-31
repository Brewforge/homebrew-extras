cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.32.2"
  sha256 arm:   "e339ad9afd554dfdd80bb8583c4286cdfb5211484bcbd0943fbd114cbf40170e",
         intel: "cafb0321b13c6c5bc55780598a949d01d49203a1426f611174c16d22b0f24946"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">=:big_sur"

  app "Escrcpy.app"

  zap trash: [
    "~/Library/Application Support/escrcpy",
    "~/Library/logs/escrcpy",
    "~/Library/Preferences/org.viarotel.escrcpy.plist",
  ]
end
