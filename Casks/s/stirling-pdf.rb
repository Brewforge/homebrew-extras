cask "stirling-pdf" do
  version "0.45.0"
  sha256 "93d785388345812f8ef730608cdb6e6eb543c7041032f050c30dce18df73b5ae"

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
