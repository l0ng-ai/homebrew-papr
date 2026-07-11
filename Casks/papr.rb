cask "papr" do
  arch arm: "aarch64", intel: "f1179e10fbb35bb2f6493734d14ed58b76075041a0f68ecd95239a424ac9b78b"

  version "0.13.1"
  sha256 arm:   "78d1edddf3c5818f5ae14e6af4409f0a7121b334b49141da8ca5d45aec9e4354",
         intel: "f1179e10fbb35bb2f6493734d14ed58b76075041a0f68ecd95239a424ac9b78b"

  url "https://github.com/l0ng-ai/papr/releases/download/v#{version}/Papr_#{version}_#{arch}.dmg"
  name "Papr"
  desc "Fast, native RSS reader for the desktop"
  homepage "https://github.com/l0ng-ai/papr"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Papr.app"
end
