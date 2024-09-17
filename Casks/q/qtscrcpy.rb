cask "qtscrcpy" do
  arch arm: "x64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "993027c0016f7776fc43ba598b38d2a0aa017b71671334e721c385be4185e72a",
         intel: "993027c0016f7776fc43ba598b38d2a0aa017b71671334e721c385be4185e72a"

  url "https://github.com/barry-ran/QtScrcpy/releases/download/v#{version}/QtScrcpy-mac-#{arch}-v#{version}.dmg"
  name "QtScrcpy"
  desc "Android real-time display control software"
  homepage "https://github.com/barry-ran/QtScrcpy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "QtScrcpy.app"

  zap trash: "~/Library/Saved Application State/rankun.QtScrcpy.savedState"
end
