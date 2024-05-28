class Tabby < Formula
  desc ": AI Coding Assitatnt"
  homepage "https://github.com/TabbyML/tabby"
  version "0.11.1"

  url "https://github.com/TabbyML/tabby/releases/download/v#{version}/tabby_aarch64-apple-darwin"

  depends_on arch: :arm
  depends_on :macos

  def install
    bin.install "tabby_aarch64-apple-darwin" => "tabby"
  end

  def tabby_log_path
    var/"log/#{name}.log"
  end

  service do
    run [opt_bin/"tabby", "serve", "--device", "metal", "--model", "StarCoder-1B"]
    keep_alive true
    log_path f.tabby_log_path
    error_log_path f.tabby_log_path
    working_dir HOMEBREW_PREFIX
  end
end
