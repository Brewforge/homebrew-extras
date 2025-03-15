cask "stirling-pdf" do
  version "0.44.2"
  sha256 "4e6d080b58fee0996de108103b68f42d36ba36992b7d9dae3ef8a7fed6fe43fa"

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
