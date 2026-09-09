cask "peazip" do
  version "11.2.0"
  sha256 "8e354e950935b4cfbd25da71a80d18ad125ab204483ad41dd8dbb097d8f32a8e"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.aarch64.dmg"
  name "Peazip"
  desc "Free Zip/Unzip software and Rar file extractor"
  homepage "https://peazip.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "PeaZip.app"

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
