cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "ef97ff1eb78a650042306ff84ae3f402357a769238c9e923da857ccf1c2802d3",
         intel: "f432ade7c3759c5fe69bb3d4320d220213185575ccb0f8856f191df626a7befb"

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
