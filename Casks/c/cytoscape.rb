cask "cytoscape" do
  arch arm: "aarch64", intel: "x64"

  version "3.10.3"
  sha256 arm:   "246d0a9137b33f1381976a8b12caa3810d8593e3b86e7801a48836e2dafa64fd",
         intel: "195a6a9e3ac1e70673222b4075db23ba1b357fa2026b1a2e5f2168b8ddd4eacb"

  version2 = version.tr(".", "_")
  url "https://github.com/cytoscape/cytoscape/releases/download/#{version}/Cytoscape_#{version2}_macos_#{arch}.dmg",
      verified: "github.com/cytoscape/cytoscape/"
  name "Cytoscape"
  desc "Open source platform for network analysis and visualization"
  homepage "http://cytoscape.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  installer script: {
    executable: "Cytoscape Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall script: {
    executable: "/Applications/Cytoscape_v#{version}/Cytoscape Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.install4j.5211-3645-3154-2580.3",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.install4j.5211-3645-3154-2580.uninstaller",
    "~/Library/Application Support/Cytoscape",
    "~/Library/Preferences/com.install4j.5211-3645-3154-2580.3.plist",
    "~/Library/Preferences/com.install4j.5211-3645-3154-2580.uninstaller.plist",
    "~/Library/Saved Application State/com.install4j.5211-3645-3154-2580.3.savedState",
    "~/Library/Saved Application State/com.install4j.5211-3645-3154-2580.uninstaller.savedState",
  ]
end
