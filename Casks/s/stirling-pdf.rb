cask "stirling-pdf" do
  version "0.44.3"
  sha256 "92ccfdded1c4a080f6a5d583054d7cb4bc79fb2e47ef02e34732a3cbe12e969f"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF.jar",
      verified: "github.com/Stirling-Tools/Stirling-PDF/"
  name "Stirling PDF"
  desc "Robust, locally hosted web-based PDF manipulation tool using Docker"
  homepage "https://stirlingpdf.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  container type: :naked

  artifact "Stirling-PDF.jar", target: "#{appdir}/Stirling-PDF.jar"

  uninstall delete: "/Applications/Stirling-PDF.jar"

  zap trash: []

  caveats do
    depends_on_java "21"
  end
end
