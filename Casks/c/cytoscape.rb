cask "cytoscape" do
  arch arm: "aarch64", intel: "x64"

  version "3.10.5"
  sha256 arm:   "0182e1551e19ba332c76e673bf618f2106f5655c8b2e1b09deb1706d2bc35a0d",
         intel: "9efd8f93e6ad97c90ae9baa647cfe3b5a4b81cb80e4286cc927b5cf731d137ac"

  version2 = version.tr(".", "_")
  url "https://github.com/cytoscape/cytoscape/releases/download/#{version}/Cytoscape_#{version2}_macos_#{arch}.dmg"
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
