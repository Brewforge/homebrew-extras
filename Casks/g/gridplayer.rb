cask "gridplayer" do
  arch arm: "arm64", intel: "intel64"

  version "0.5.5"
  sha256 arm:   "a0a9effd6c424931eaa43c2c978c15567583f7afeca8c0dbac8b1aa05e91bc6d",
         intel: "33b6031667454373ed163590be1cd63ce0881485ead3e5d5851dbc4a316a84c5"

  url "https://github.com/vzhd1701/gridplayer/releases/download/v#{version}/GridPlayer.#{version}_#{arch}.dmg"
  name "gridplayer"
  desc "Play videos side-by-side"
  homepage "https://github.com/vzhd1701/gridplayer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "gridplayer.app"

  zap trash: [
    "~/Library/Application Support/vzhd1701",
    "~/Library/Saved Application State/com.vzhd1701.gridplayer.savedState",
  ]
end
