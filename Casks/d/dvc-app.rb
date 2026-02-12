cask "dvc-app" do
  version "3.64.1"
  sha256 "d429afb71c40529afc9105881a4cfe97173014053599e0a5f42ef3c26705fad6"

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
