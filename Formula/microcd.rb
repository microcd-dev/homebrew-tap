class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.39.2/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.39.2/microcd-darwin-aarch64.tar.gz"
      sha256 "ae29f413cb70c7c26902877d60a090e5678bf2f2c05361bb35c470807de9e642"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.39.2/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.39.2/microcd-darwin-x86_64.tar.gz"
      sha256 "f04d3580709026e8e2e54461f22a6b222fa4461bef6871cab196988083a6ace5"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
