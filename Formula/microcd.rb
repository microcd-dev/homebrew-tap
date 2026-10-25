class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.32.0/microcd-darwin-aarch64.tar.gz"
      sha256 "2c72a4ad57801dd35f6e08a01df758f6557a9b335a4b6eba42b28943fce1ef8a"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.32.0/microcd-darwin-x86_64.tar.gz"
      sha256 "86dcf3f6d79615c54595e24d3e7897613a9cc2a5d01e87414b5c0fd882e8ac96"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
