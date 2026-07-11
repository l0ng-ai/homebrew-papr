class PaprCli < Formula
  desc "Agent-facing CLI over your Papr RSS feeds"
  homepage "https://github.com/l0ng-ai/papr"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-aarch64-apple-darwin.tar.gz"
      sha256 "f9e00c5f69c13b7dd02cf1265188e031db0a10e82ea21b880dea3daae6a46945"
    end
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-apple-darwin.tar.gz"
      sha256 "e87e1aa7cf4e63cec8cc4ab1f132195c30b9c64102283ffed19c51102ccbf9b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/papr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dec32d896bed1585e7fbb25de833cdd7c748a7b8a272a81c6ad90a75d1232e54"
    end
  end

  def install
    bin.install "papr"
  end

  test do
    assert_match "papr", shell_output("#{bin}/papr --help")
  end
end
