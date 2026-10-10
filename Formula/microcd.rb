class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.29.0/microcd-darwin-aarch64.tar.gz"
      sha256 "81f113398fd78c43168b9baaf268e015eb687eefa80d9cfa8d92b66be0511c11"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.29.0/microcd-darwin-x86_64.tar.gz"
      sha256 "989547a2b47b3c4627df96b7a7a724d79e7f4f7836bb8562906a01a8a762e6c1"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
