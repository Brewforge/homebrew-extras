class Alist < Formula
  desc "File list program that supports multiple storage"
  homepage "https://alist.nn.ci/"
  url "https://github.com/AlistGo/alist/archive/refs/tags/v3.38.0.tar.gz"
  sha256 "bc8983900786afdc2ac3d4a60d5e71a1e5db0c2c63f00190c728974ee266ce12"
  license "AGPL-3.0-only"
  head "https://github.com/AlistGo/alist.git", branch: "main"

  depends_on "go" => :build
  depends_on "nodejs" => :build
  depends_on "pnpm" => :build

  def install
    bin.install "alist"
  end

  def post_install
    (var/"log/alist").mkpath
    (etc/"alist").mkpath
    prefix.install_symlink etc/"alist" => opt_prefix/"data"
    ln_s var/"log/alist", opt_prefix/"data/log"
  end

  service do
    run [opt_bin/"alist", "server"]
    working_dir opt_prefix
    keep_alive true
  end

  def caveats
    <<~EOS
      To reveal alist admin user's info in default `config.json` again, run the following command:
        cd #{opt_prefix} && alist admin
      Or reveal `admin` password via `sqlite3` command (before v3.25.1):
        sqlite3 #{etc}/alist/data.db "select password from x_users where username = 'admin'"
      Or reset `admin` password:
        cd #{opt_prefix} && alist admin random
      Or set new `admin` password:
        cd #{opt_prefix} && alist admin set NEW_PASSWORD
    EOS
  end

  test do
    system bin/"alist", "admin"
  end
end
