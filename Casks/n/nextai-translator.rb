cask "nextai-translator" do
  version "0.6.22"
  sha256 "7fcf250a768b415f86702d863457821bfd2c370545eb14762af31769f498d4da"

  url "https://github.com/nextai-translator/nextai-translator/releases/download/v#{version}/NextAI.Translator_#{version}_aarch64.dmg"
  name "NextAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/nextai-translator/nextai-translator"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "NextAI Translator.app"

  zap trash: [
    "~/Library/Application Support/xyz.yetone.apps.openai-translator",
    "~/Library/Caches/xyz.yetone.apps.openai-translator",
    "~/Library/WebKit/xyz.yetone.apps.openai-translator",
  ]
end
