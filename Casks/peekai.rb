cask "peekai" do
  arch arm: "-arm64-", intel: "-"

  version "3.0.5"
  sha256 arm:   "83745b323cf01eee7c773c83a443670f535da78f8f4e0b300d819512c96e2423",
         intel: "53bf65c61491bf25231e52b54da90f70f4698a22af77099c531b7cca6d859ff7"

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
