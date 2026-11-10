class Microcd < Formula
  desc "Lightweight continuous deployment agent for edge devices"
  homepage "https://microcd.dev"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.39.1/microcd-darwin-aarch64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.39.1/microcd-darwin-aarch64.tar.gz"
      sha256 "790873155d70d25c5b67aa741565300911e4f47ed15dff776a080fe41f59eac0"
    end
    on_intel do
      url "https://github.com/microcd-dev/homebrew-tap/releases/download/v0.39.1/microcd-darwin-x86_64.tar.gz"
      mirror "https://packages.microcd.dev/homebrew/v0.39.1/microcd-darwin-x86_64.tar.gz"
      sha256 "0a87833e3cced29c9e5065ed30abfd98b1b1b97031efed0508ce901b423ecc23"
    end
  end

  def install
    bin.install "microcd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/microcd --version")
  end
end
