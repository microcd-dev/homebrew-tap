class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.35.0/microcd-darwin-aarch64.tar.gz"
      sha256 "bddaccc566c0d0957baa27c1f8c7f97c8760bdaf2d7c1307cc7a3eff1ffe9e2e"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.35.0/microcd-darwin-x86_64.tar.gz"
      sha256 "a3654eaa237af9586291b938f5a0a3e417fd97ac243ee0de923ce159e6052045"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
