cask "aerospace" do
  version "0.7.1-Beta"
  sha256 "1bb3b49942e5ddf94e6268c7a35e26d975ede1682805c3d21d6778b3d87318be"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "I3-like tiling window manager"
  homepage "https://github.com/nikitabobko/AeroSpace"

  livecheck do
    url :url
    strategy :GithubReleases
  end

  auto_updates true
  # NOTE: conflicts_with formula: is a stub and is not yet functional. :(
  conflicts_with formula: "aerospace-cli"
  depends_on macos: ">= :ventura" # macOS 13

  app "AeroSpace-v#{version}/AeroSpace.app"
  binary "AeroSpace-v#{version}/aerospace"

  zap trash: "~/Library/Preferences/bobko.aerospace.plist"
end
