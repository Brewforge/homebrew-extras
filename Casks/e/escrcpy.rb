cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.30.2"
  sha256 arm:   "211c9dd5f8c2bbd394b70efeccebc360bbee48a1ed430a1e6ac5e768c91c3855",
         intel: "6e842a13165b63b691feab24b42502e48c556aaa4e53cc430093687b0faafa3d"

  url "https://github.com/viarotel-org/escrcpy/releases/download/v#{version}/Escrcpy-#{version}-mac-#{arch}.dmg"
  name "Escrcpy"
  desc "Graphical Scrcpy to display and control Android, devices powered by Electron"
  homepage "https://github.com/viarotel-org/escrcpy/"

  livecheck do
    url :url
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
