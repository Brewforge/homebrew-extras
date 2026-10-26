cask "peazip" do
  version "11.4.0"
  sha256 "b31ec81e13dbe21a6189637855e55b827b2c7de046ba97060b689ace3f6248f9"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.aarch64.dmg"
  name "Peazip"
  desc "Free Zip/Unzip software and Rar file extractor"
  homepage "https://peazip.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "peazip.app"

  preflight_steps do
    run "xattr", args: ["-cr", "{{staged_path}}/PeaZip.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.company.peazip.plist",
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]

  caveats <<~EOS
    To install PeaZip's macOS service menus (Finder context menu Quick Actions), run:

      for workflow in "#{appdir}/peazip.app/Contents/Resources/share/batch/macOS service menus/"*.workflow; do
        open "$workflow"
      done
  EOS
end
