cask "gai" do
  version "1.2.7"
  sha256 "3393d265b3b88a72772128ef8abab88212b80cd9b20c143d4906691dcbe6e416"

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
