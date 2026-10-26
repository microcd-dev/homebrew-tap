class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.33.0/microcd-darwin-aarch64.tar.gz"
      sha256 "1cbbc3edf15e16cc46068334f0fde90ca981c1cec41094fe4e07a2931f9eeb3b"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.33.0/microcd-darwin-x86_64.tar.gz"
      sha256 "76d40eb572955dff30a3fdb57b802cb99774dbd8bdf617e510e786024fb3ab28"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
