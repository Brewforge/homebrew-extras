cask "ryujinx" do
  version "1.1.1359"
  sha256 "c4bbbb4532ea0f0cb8785e1f44feaf6e1b26645fcfa659d79b0dd0765ea97542"

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
