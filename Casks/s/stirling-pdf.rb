cask "stirling-pdf" do
  version "0.43.0"
  sha256 "36cec5ccc2f15b4ad3de4a4118a2b674659aaf1cada3ebe76a6abdba705bbc71"

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

  installer script: {
    executable: "Stirling PDF.app/Contents/MacOS/Stirling PDF",
    args:       ["-q"],
  }

  uninstall quit:   "com.stirling.software.pdf",
            delete: "/Applications/Stirling PDF.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.stirling.software.pdf",
    "~/Library/Application Support/Stirling-PDF",
    "~/Library/Preferences/com.stirling.software.pdf.plist",
  ]
end
