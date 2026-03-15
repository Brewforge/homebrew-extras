cask "dvc-app" do
  version "3.67.0"
  sha256 "a3175b3672ae00364c04d060909ce4310d442ccf8678ed005921d7b5508c9f3b"

  url "https://dvc.org/download/osx/dvc-#{version}"
  name "dvc"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://dvc.org/"

  livecheck do
    url "https://doc.dvc.org/install/macos"
    regex(/href=.*?dvc-(\d+(\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  pkg "dvc-#{version}.pkg"

  uninstall quit:    "com.iterative.dvc",
            pkgutil: "com.iterative.dvc"

  zap trash: [
    "~/Library/Application Support/dvc",
    "~/Library/Application Support/iterative",
  ]
end
