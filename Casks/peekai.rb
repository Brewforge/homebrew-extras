cask "peekai" do
  arch arm: "-arm64-", intel: "-"

  version "4.0.4"
  sha256 arm:   "37e3844c06ebbc5309c3f3bf8d7c84dce7d0d1f602a0123dea33e01ec035f8cf",
         intel: "fc1d1b1863cb3c5be0be8db229699cc7aa6047fc5ee607fa858eb9646c1680fa"

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
