cask "escrcpy" do
  arch arm: "arm64", intel: "x64"

  version "1.25.5"
  sha256 arm:   "a2792119f046d2b70267429ce4a24ea61cdfbb79b53bbc78e715667706e5b6e5",
         intel: "799804d697a5abf2a7491ec822f8601d3946306e919743a4bb17869e76acc9ed"

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
