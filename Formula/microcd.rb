class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  version "0.26.0"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.26.0/microcd-darwin-aarch64.tar.gz"
      sha256 "135703fe41f49f2220d5f9e90ebcc169208523037d4d58b10548e35b561722a3"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.26.0/microcd-darwin-x86_64.tar.gz"
      sha256 "6da3ccc126d1ba7e32fd7383057b15ed6fb03fb323f839e51f6cb6059a534a2a"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
