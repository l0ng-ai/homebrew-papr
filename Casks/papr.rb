cask "papr" do
  arch arm: "aarch64", intel: "20dbc93f5de5ccc261f1e28a0df733ec682f1e6f7824de064f68f25a33d48c1b"

  version "0.12.0"
  sha256 arm:   "002139a0714547c776618837b9bb8962e5a1cd4f269885fcf03db7604548ec08",
         intel: "20dbc93f5de5ccc261f1e28a0df733ec682f1e6f7824de064f68f25a33d48c1b"

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
