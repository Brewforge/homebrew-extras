cask "gridplayer" do
  version "0.5.3"
  sha256 "6885adfdea4329726273dba2560b4bd7329f2f9c64946b1fc4f54de314758551"

  url "https://github.com/vzhd1701/gridplayer/releases/download/v#{version}/GridPlayer.#{version}.dmg"
  name "gridplayer"
  desc "Play videos side-by-side"
  homepage "https://github.com/vzhd1701/gridplayer"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "gridplayer.app"

  zap trash: [
    "~/Library/Application Support/vzhd1701",
    "~/Library/Saved Application State/com.vzhd1701.gridplayer.savedState",
  ]
end
