cask "gai" do
  version "1.2.7"
  sha256 "9540846e817f5e6015050684198a56a831ddae51a78be7c096a7f5d7fdbc3cfb"

  url "https://webpath.iche2.com/release/Gai-#{version}-universal.dmg"
  name "Gai"
  desc "Generative-AI Tools For Beginner"
  homepage "https://webpath.iche2.com/gaidoc/en/"

  livecheck do
    url "https://webpath.iche2.com/release/"
    regex(/Gai-(\d+(?:\.\d+)*)-universal\.dmg/i)
    strategy :page_match
  end

  depends_on macos: :catalina

  app "Gai.app"

  zap trash: "~/Library/Caches/com.iche2.gai.macos"
end
