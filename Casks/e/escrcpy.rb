cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "fe97cc2850ff3cfdd721ccfbb3d76abc32d49649dad44625fd7e90c890c7c315",
         intel: "59968cc70ca083cfa2a61f925f8df616532af70da60668fef7a5ff42efc57032"

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
