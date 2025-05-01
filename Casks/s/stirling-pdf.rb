cask "stirling-pdf" do
  version "0.46.0"
  sha256 "b46a7f7dfbeee10cb28475fc5bf7106d822ee157e0681216c3ece97692306368"

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
    <<~EOS
      Launch Stirling-PDF.jar from the Applications folder by
      java -jar #{appdir}/Stirling-PDF.jar
    EOS
  end
end
