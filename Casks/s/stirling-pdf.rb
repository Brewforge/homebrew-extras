cask "stirling-pdf" do
  version "0.45.3"
  sha256 "fcfbef977c1f9ac6507312491b5eb440285f282981c68a9f3428cce1e7c8b021"

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
