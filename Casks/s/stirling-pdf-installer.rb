cask "stirling-pdf-installer" do
  version "0.44.3"
  sha256 "da1341615a7716107d14ab58a50bf26a6bd2ea366baa4b5e6e883b3b18ce73e9"

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
