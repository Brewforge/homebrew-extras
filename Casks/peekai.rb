cask "peekai" do
  arch arm: "-arm64-", intel: "-"

  version "4.0.1"
  sha256 arm:   "0c5c0838743faafcd1e402bb25a09cefd113ded71715f49eaa6c9241b1adf67b",
         intel: "046bc362e9d59ebf6b52e53daa48d991e5ae8408ee6ba761eebc73e375450f39"

  url "https://github.com/prateekkeshari/peek-ai/releases/download/#{version}/Peek-#{version}#{arch}mac.zip",
      verified: "github.com/prateekkeshari/peek-ai/"
  name "Peek"
  desc "Access to ChatGPT Bard Poe Pi Perplexity Claude Labs on Menu Bar"
  homepage "https://prateekkeshari.gumroad.com/l/peek"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Peek.app"

  zap trash: [
    "~/Library/Application Support/Peek",
    "~/Library/Logs/Peek",
    "~/Library/Preferences/de.prateek.peek.plist",
    "~/Library/Saved Application State/de.prateek.peek.savedState",
  ]
end
