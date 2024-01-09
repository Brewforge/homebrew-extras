cask "peekai" do
  arch arm: "-arm64-", intel: "-"

  version "4.0.0"
  sha256 arm:   "4e18307540a0dc9b0f1c066a4a09c2b3119f503e3a3e48a3bcbf6c7be3b4e21a",
         intel: "abb34ddf583f09ffa94b63acecd455ed861718bab1c5c6c2b37728dce91f41f2"

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
