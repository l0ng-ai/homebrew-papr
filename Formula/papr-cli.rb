class PaprCli < Formula
  desc "Agent-facing CLI over your Papr RSS feeds"
  homepage "https://github.com/l0ng-ai/papr"
  version "0.12.0-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-aarch64-apple-darwin.tar.gz"
      sha256 "3aed14af22d3916e14de247f552da1397ce1ee1997fec071960a9e1c2f9047d7"
    end
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-apple-darwin.tar.gz"
      sha256 "1aec104cef9e49d1674ac140dc64224479295023fb7c33fd9679e21adc7755af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aec0ec96d8da190f132de6aa2aef54e03c1e8f7e07882bc97aa8ea308cd7c4ad"
    end
  end

  def install
    bin.install "papr"
  end

  test do
    assert_match "papr", shell_output("#{bin}/papr --help")
  end
end
