cask "peekai" do
  arch arm: "-arm64-", intel: "-"

  version "4.0.5"
  sha256 arm:   "fab955026a103ef81ead20a25326c916b83c13b853113641f948a1a3dbf5cba1",
         intel: "162920f68f5bdddebd63cbe523e0c4fd563e4ac66ca99f339f1525201f88831b"

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
