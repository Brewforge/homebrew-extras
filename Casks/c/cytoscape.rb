cask "cytoscape" do
  arch arm: "aarch64", intel: "x64"

  version "3.10.4"
  sha256 arm:   "aacfa17a564db5993da006a05e7b661aa2eb6e8ec0d132f0c4d3af74f62e0d2c",
         intel: "f1d898cc07ab0c74e02a559c97224e7f0fd84094e66f50f9e263c686efdae93c"

  version2 = version.tr(".", "_")
  url "https://github.com/cytoscape/cytoscape/releases/download/#{version}/Cytoscape_#{version2}_macos_#{arch}.dmg",
      verified: "github.com/cytoscape/cytoscape/"
  name "Cytoscape"
  desc "Open source platform for network analysis and visualization"
  homepage "https://cytoscape.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  installer script: {
    executable: "Cytoscape Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall script: {
    executable: "/Applications/Cytoscape_v#{version}/Cytoscape Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  zap trash: "~/Library/Application Support/Cytoscape"
end
