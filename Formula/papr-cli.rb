class PaprCli < Formula
  desc "Agent-facing CLI over your Papr RSS feeds"
  homepage "https://github.com/l0ng-ai/papr"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-aarch64-apple-darwin.tar.gz"
      sha256 "eea15e6b950527abbc5e794c6f5f060717d9385de1ca9b7305c2e52d182104b4"
    end
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-apple-darwin.tar.gz"
      sha256 "c52cb95a30e6793eb20aa801d514d762bae0e311329dc239f99d369182ea66a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d37f723bc3724b04dee1bd315d546765084349624d90a74b78db6447b8cd8436"
    end
  end

  def install
    bin.install "papr"
  end

  test do
    assert_match "papr", shell_output("#{bin}/papr --help")
  end
end
