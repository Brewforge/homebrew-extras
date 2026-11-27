cask "gridplayer" do
  arch arm: "arm64", intel: "intel64"

  version "0.6.0"
  sha256 arm:   "c003e8b6762650a9f80c1f665f03324c0d08dc54ee1c21b5d1a4ec6cfa6bf6ad",
         intel: "b80b196fbf829ca8a924c767910ebef1bc512d399f8633d1c4f94999f437d7f3"

  url "https://github.com/vzhd1701/gridplayer/releases/download/v#{version}/GridPlayer.#{version}_#{arch}.dmg"
  name "gridplayer"
  desc "Play videos side-by-side"
  homepage "https://github.com/vzhd1701/gridplayer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "GridPlayer.app"

  zap trash: [
    "~/Library/Application Support/vzhd1701",
    "~/Library/Saved Application State/com.vzhd1701.gridplayer.savedState",
  ]
end
