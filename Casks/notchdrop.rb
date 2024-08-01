cask "notchdrop" do
  version "2.4.13"
  sha256 "6dc549402d1e2f8462132ac088ae86ab7a1032a18b144998f47022828e3ac85d"

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
