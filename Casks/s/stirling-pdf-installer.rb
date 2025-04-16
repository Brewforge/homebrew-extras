cask "stirling-pdf-installer" do
  version "0.45.6"
  sha256 "7d4a821084129e0c48be17811e7f6c3114c8b4cd605cae100b38d2d36e7a63a3"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-mac-installer.dmg",
      verified: "github.com/Stirling-Tools/Stirling-PDF/"
  name "Stirling PDF"
  desc "Robust, locally hosted web-based PDF manipulation tool using Docker"
  homepage "https://stirlingpdf.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Stirling-PDF.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.stirling.software.pdf",
    "~/Library/Application Support/Stirling-PDF",
    "~/Library/Preferences/com.stirling.software.pdf.plist",
  ]
end
