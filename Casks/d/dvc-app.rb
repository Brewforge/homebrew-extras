cask "dvc-app" do
  version "3.67.1"
  sha256 "33f315d177db3d317562084c4d3522fbe326c0ade9b1877735c33259dbb458fd"

  url "https://dvc.org/download/osx/dvc-#{version}"
  name "dvc"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://dvc.org/"

  livecheck do
    url "https://doc.dvc.org/install/macos"
    regex(/href=.*?dvc-(\d+(\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  pkg "dvc-#{version}.pkg"

  uninstall quit:    "com.iterative.dvc",
            pkgutil: "com.iterative.dvc"

  zap trash: [
    "~/Library/Application Support/dvc",
    "~/Library/Application Support/iterative",
  ]
end
