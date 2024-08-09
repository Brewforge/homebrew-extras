cask "ryujinx" do
  version "1.1.1373"
  sha256 "97085c48dc0fe04dbe56d55d3a129e4a731ced7aad216c2ddce48891d1e5f671"

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
