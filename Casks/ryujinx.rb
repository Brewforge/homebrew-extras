cask "ryujinx" do
  version "1.1.1364"
  sha256 "b24e5cb93147d3618f40583befc492b70a66eda848196f6e1b36f5036bc2c980"

  url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/test-ava-ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-master/"
  name "Ryujinx"
  desc "Simple, experimental Nintendo Switch emulator"
  homepage "https://ryujinx.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ryujinx.app"

  zap trash: "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState"
end
