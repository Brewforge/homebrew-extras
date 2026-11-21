cask "tutti" do
  version "2.0.1"
  sha256 "bd43fc08986f3edbbb88be9c4af0aa937aaa83795d980ad8e395eaddfd382b01"

  url "https://github.com/BarryBarrywu/tutti/releases/download/v#{version}/Tutti-#{version}.zip"
  name "Tutti"
  desc "Menu bar audio control center for multiple output devices"
  homepage "https://tutti.barrybarrywu.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Tutti.app"
end
