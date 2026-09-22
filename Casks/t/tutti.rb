cask "tutti" do
  version "1.11.0"
  sha256 "f6202dfe14ff85324f24e177eabf84f97f895abfd99701f15a5a70dbb4434b8f"

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
