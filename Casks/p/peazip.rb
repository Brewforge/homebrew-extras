cask "peazip" do
  version "11.3.0"
  sha256 "47bdd68b89d3c7b9fa9b10766048e962f636613fe274d4f36209ef301c5497b0"

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

  postflight_steps do
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, add to archive.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, add to Brotli.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, add to BZ2.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, add to GZ.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, add to TAR.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, add to XZ.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, add to Zstd.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, convert.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, extract here (smart new folder).workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, extract to Desktop.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, extract to Documents.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, extract to Downloads.workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, extract....workflow",
        ]
    run "/usr/bin/open",
        args: [
          "{{staged_path}}/PeaZip.app/Contents/Resources/share/batch/macOS service menus/" \
          "PeaZip, open file or folder.workflow",
        ]
  end

  zap trash: [
    "~/Library/Preferences/com.company.peazip.plist",
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]
end
