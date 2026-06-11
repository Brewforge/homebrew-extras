cask "nextai-translator" do
  version "0.6.20"
  sha256 "9ef7f71b59234f0374da1d10110c0bacaef09c2f450bd24be29fa6f4cb801b1e"

  url "https://github.com/nextai-translator/nextai-translator/releases/download/v#{version}/NextAI.Translator_#{version}_aarch64.dmg"
  name "NextAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/nextai-translator/nextai-translator"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "NextAI Translator.app"

  zap trash: [
    "~/Library/Application Support/xyz.yetone.apps.openai-translator",
    "~/Library/Caches/xyz.yetone.apps.openai-translator",
    "~/Library/WebKit/xyz.yetone.apps.openai-translator",
  ]
end
