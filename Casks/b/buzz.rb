cask "buzz" do
  arch arm: "ARM64", intel: "X64"

  version "1.4.4"
  sha256 arm:   "956d74ec3db341e04867a4dd727ed22fa8ec629762e505624dcce85a78eb94f8",
         intel: "514edaa47841069c9f8953bdb0f3619167ed7a19e93427ec35014a89828d2fbb"

  url "https://github.com/chidiwilliams/buzz/releases/download/v#{version}/Buzz-#{version}-mac-#{arch}.dmg",
      verified: "github.com/chidiwilliams/buzz/"
  name "Buzz"
  desc "Transcribe and translate audio offline on your personal computer"
  homepage "https://chidiwilliams.github.io/buzz"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Buzz.app"

  zap trash: [
    "~/Library/Application Support/Buzz",
    "~/Library/Caches/Buzz",
    "~/Library/Logs/Buzz",
    "~/Library/Preferences/com.chidiwilliams.buzz.plist",
  ]
end
