cask "stirling-pdf" do
  version "0.42.0"
  sha256 "1a97acab8a9363d94c22ebe1afdf79066645b614f9a3f6ee399ff21f01b51d55"

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

  zap trash: ["/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.stirling.software.pdf",
              "~/Library/Preferences/com.stirling.software.pdf.plist"]
end
