class PaprCli < Formula
  desc "Agent-facing CLI over your Papr RSS feeds"
  homepage "https://github.com/l0ng-ai/papr"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-aarch64-apple-darwin.tar.gz"
      sha256 "1dc43755fcab36eee80fc0297a52c65e2cab5740d42adc0dc8c7dac450047b5c"
    end
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-apple-darwin.tar.gz"
      sha256 "37bb2388d805fbfe6ad114e44f1fc82bb7db58e408d53b3c58d46d4503a41e90"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67f65135c0e9715c68680406211a2ccda7e0495eabb0fe52c97830e9490ffbf5"
    end
  end

  def install
    bin.install "papr"
  end

  test do
    assert_match "papr", shell_output("#{bin}/papr --help")
  end
end
