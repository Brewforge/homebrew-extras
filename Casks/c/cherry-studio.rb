cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.9.10"
  sha256 arm:   "add330f5d4ce4b9c5bbb9644f8d96fdc36e39f6fa0346a9f3d0ee05a1348c274",
         intel: "e44c62e00db62268100bf8023cec328fe310d099bc4cac7ea8b1075301edff9c"

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
