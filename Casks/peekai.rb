cask "peekai" do
  arch arm: "-arm64-", intel: "-"

  version "3.0.3"
  sha256 arm:   "885a1bcabdd8ab2bdae7073f21396f4c2106ab093716ff724531bfe59db9afbc",
         intel: "591d4af5e3eb79ab0eee8fb796872ec4e647baf15be7d9ca98f602376c20d694"

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
