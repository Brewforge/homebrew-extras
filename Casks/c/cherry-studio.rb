cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.9.16"
  sha256 arm:   "c4318e931813946e21fa3ba6615d835f9cc98ed4242b7871669f13d21656fa89",
         intel: "178e1e0557e05b6a936c2656540939a3abcd6b037ad9be453c98575559347fdd"

  url "https://github.com/kangfenmao/cherry-studio/releases/download/v#{version}/Cherry-Studio-#{version}-#{arch}.dmg"
  name "Cherry Studio"
  desc "Desktop client that supports for multiple LLM providers"
  homepage "https://github.com/kangfenmao/cherry-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Cherry Studio.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.kangfenmao.CherryStudio",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.kangfenmao.CherryStudio.helper.GPU",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/CherryStudio",
    "~/Library/Application Support/CherryStudio",
    "~/Library/Logs/CherryStudio",
    "~/Library/Preferences/com.kangfenmao.CherryStudio.plist",
    "~/Library/Saved Application State/com.kangfenmao.CherryStudio.savedState",
  ]
end
