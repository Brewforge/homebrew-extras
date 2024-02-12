cask "peekai" do
  arch arm: "-arm64-", intel: "-"

  version "4.0.3"
  sha256 arm:   "e6bc71f9ca537f7e3c5687dc4760744df95366e2a4b839e70f08ee5c96bbcb4f",
         intel: "c9cec33f437a3548b9775d9d4a253f7db2c053ff6d49c3626e6b930ccc739c85"

  url "https://github.com/prateekkeshari/peek-ai/releases/download/#{version}/Peek-#{version}#{arch}mac.zip",
      verified: "github.com/prateekkeshari/peek-ai/"
  name "Peek"
  desc "Access to ChatGPT, Bard, Poe, Pi, Perplexity, Claude Labs on Menu Bar"
  homepage "https://prateekkeshari.gumroad.com/l/peek"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Peek.app"

  zap trash: [
    "~/Library/Application Support/Peek",
    "~/Library/Logs/Peek",
    "~/Library/Preferences/de.prateek.peek.plist",
    "~/Library/Saved Application State/de.prateek.peek.savedState",
  ]
end
