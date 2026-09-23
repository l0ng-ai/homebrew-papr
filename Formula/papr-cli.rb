class PaprCli < Formula
  desc "Agent-facing CLI over your Papr RSS feeds"
  homepage "https://github.com/l0ng-ai/papr"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-aarch64-apple-darwin.tar.gz"
      sha256 "6312b66966eaae144b036f01ef9486b1178e663a66d97ca0ddd8a82b2e664104"
    end
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-apple-darwin.tar.gz"
      sha256 "5383866083a9b804665efa8bc704ddf4399475297843ddad5f974eaefe9b84e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f935d54aac1fcaaa7e429ee4adcf112c5412f979d8e617b64c0b2f0b9048a43e"
    end
  end

  def install
    bin.install "papr"
  end

  test do
    assert_match "papr", shell_output("#{bin}/papr --help")
  end
end
