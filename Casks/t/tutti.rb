cask "tutti" do
  version "2.0.0"
  sha256 "ae8b4ae16dd5706d77bd7b4fd58644b733976e8a48ed17b53e645eb465e9700e"

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
