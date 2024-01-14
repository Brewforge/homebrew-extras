cask "peekai" do
  arch arm: "-arm64-", intel: "-"

  version "4.0.2"
  sha256 arm:   "7124ff0b0ee374938f7994c8770118eb0d4f3c02fadaaf9dc4bc49ed8318a413",
         intel: "93762c7170583cbf381605559e6e865d99f0a3ff591de6b32c18196cb61b1d80"

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
