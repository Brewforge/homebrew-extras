cask "dvc-app" do
  version "3.65.0"
  sha256 "35a5e2765d1a8a0488d2df0d73e03c123240f4d7409f23e8e5691a34345ec64d"

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
