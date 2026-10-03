class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.27.1/microcd-darwin-aarch64.tar.gz"
      sha256 "9985e10ca2ebc16e9b3ddb720a609ed58a6b6bb5761d883dd794e68763c5ff73"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.27.1/microcd-darwin-x86_64.tar.gz"
      sha256 "a6c5bbb1afd5637f1722765126f1720603f443d73ed54a41d74fa4d50e2ad229"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
