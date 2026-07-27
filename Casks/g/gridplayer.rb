cask "gridplayer" do
  arch arm: "arm64", intel: "intel64"

  version "0.5.4"
  sha256 arm:   "df730c93af97bad5200bd24988f2c18edb87411359db1fd9bac737ecefccd73e",
         intel: "848823731819e21c615a3ca39c7b968b2af47bdc6df32ee7682026e2ed3422eb"

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
