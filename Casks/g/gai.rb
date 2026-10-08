cask "gai" do
  version "1.2.8"
  sha256 "a79d7da3f5f7c64fe7a6f4ac679de087daba69978e8341d3a241a7bfd39200f5"

  url "https://webpath.iche2.com/release/Gai-#{version}-universal.dmg"
  name "Gai"
  desc "Generative-AI Tools For Beginner"
  homepage "https://webpath.iche2.com/gaidoc/en/"

  livecheck do
    url "https://webpath.iche2.com/release/"
    regex(/Gai-(\d+(?:\.\d+)*)-universal\.dmg/i)
    strategy :page_match
  end

  depends_on :macos

  app "Gai.app"

  zap trash: "~/Library/Caches/com.iche2.gai.macos"
end
