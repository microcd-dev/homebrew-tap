class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.38.1/microcd-darwin-aarch64.tar.gz"
      sha256 "c1c024fbfbcf647778ade77603b08f07b604b7b70ec520b2e2e659a2963a7d88"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.38.1/microcd-darwin-x86_64.tar.gz"
      sha256 "04658493fa39f02b2fe79778ee5d08e44ec0b4a51764d441726fccc4889f395c"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
