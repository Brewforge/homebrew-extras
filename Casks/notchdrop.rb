cask "notchdrop" do
  version "2.4.11"
  sha256 "f4fbde85feacb713dc812819b9d705f0eca0fd4bf996b6a96e13d4efb714a00c"

  url "https://github.com/Lakr233/NotchDrop/releases/download/#{version}/NotchDrop.zip"
  name "NotchDrop"
  desc "Transform your MacBook's notch into a convenient file drop zone."
  homepage "https://github.com/Lakr233/NotchDrop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NotchDrop.app"

  zap trash: ""
end
