class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.34.1/microcd-darwin-aarch64.tar.gz"
      sha256 "5d0308c6905355d98c78de138436a8d5b5a142ee0be9455eb30ae36b204e63b0"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.34.1/microcd-darwin-x86_64.tar.gz"
      sha256 "20d340351139b9db959a42f67558e3b2e0870bd55d4d50218faacbbf16fd9b3b"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
