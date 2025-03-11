cask "stirling-pdf-installer" do
  version "0.44.1"
  sha256 "e81eddf78db7cf6ee4bcb286cc9b8a6689923a2da134dae22c9e94397b0b982b"

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
