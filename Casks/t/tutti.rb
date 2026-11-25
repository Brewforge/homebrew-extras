cask "tutti" do
  version "2.1.0"
  sha256 "ab73d5d6d52a658268bc83335f0d254637e70ab91147270beffb768d18c4c201"

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
