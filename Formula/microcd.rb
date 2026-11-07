class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.36.1/microcd-darwin-aarch64.tar.gz"
      sha256 "02e73c57fc5264f07e206c498de31e5f52c1d9a22988bcba44cf4b137e705828"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.36.1/microcd-darwin-x86_64.tar.gz"
      sha256 "d3bcad38df24aa26bb25e9fbbe2d125198c3058a86e3aeb663101a9269ca5020"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
