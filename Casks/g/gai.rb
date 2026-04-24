cask "gai" do
  version "1.2.6"
  sha256 "34597fbfd1625afb21c017728916fc8ae0e3a0aeaa2e01095f62b2f4b8b4fe0d"

  url "https://webpath.iche2.com/release/Gai-#{version}-universal.dmg"
  name "Gai"
  desc "Generative-AI Tools For Beginner"
  homepage "https://webpath.iche2.com/gaidoc/en/"

  livecheck do
    url "https://webpath.iche2.com/release/"
    regex(/Gai-(\d+(?:\.\d+)*)-universal\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "Gai.app"

  zap trash: "~/Library/Caches/com.iche2.gai.macos"
end
