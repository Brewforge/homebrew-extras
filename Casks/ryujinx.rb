cask "ryujinx" do
  version "1.1.1110"
  sha256 "208b4b4a0bdf83d6e75d86c33424d7c6759e70f16867966c3903d8269c29fa63"

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

  zap trash: [
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
