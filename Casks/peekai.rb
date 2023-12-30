cask "peekai" do
  arch arm: "-arm64-", intel: "-"

  version "3.0.6"
  sha256 arm:   "6325de2529a281daa8c5dec96996cdd06cda2191fa7f0b85cc76aa4a78cd2de4",
         intel: "96c88e5413a14da7974a8664245517fca0ee7c10c945f7740899d6758040fe86"

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
