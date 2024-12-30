cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "140253de814dc9fa6d90a7aa45caa407970c1f0b84fb0a8caa8072ca03b70c92",
         intel: "195a6a9e3ac1e70673222b4075db23ba1b357fa2026b1a2e5f2168b8ddd4eacb"

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
