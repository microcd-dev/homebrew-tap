class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.0/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.0/microcd-darwin-aarch64.tar.gz"
      sha256 "4e6464e592db72adfb15106e1238be08b31b007da9fd056c6f538989dfca7d01"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.41.0/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.41.0/microcd-darwin-x86_64.tar.gz"
      sha256 "bca420bac6d9aaf1ce29e63cba645f3cc0e8478ec6d07a455001297a4beb73ad"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
