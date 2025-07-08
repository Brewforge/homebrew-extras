cask "stirling-pdf-installer" do
  arch arm: "", intel: "-x86_64"

  version "1.0.1"
  sha256 arm:   "32b907511025ee0830b3bf3dcadca8f011fc7366cb6b6fab08c389d5c6f82f94",
         intel: "2b4fd5460fa9b25308b6acb677e767426975e6f0729ba6eab93b5daecdb4a2a7"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-mac#{arch}-installer.dmg",
      verified: "github.com/Stirling-Tools/Stirling-PDF/"
  name "Stirling PDF"
  desc "Robust, locally hosted web-based PDF manipulation tool using Docker"
  homepage "https://stirlingpdf.com/"

  livecheck do
    skip "Agreement handle is required"
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
