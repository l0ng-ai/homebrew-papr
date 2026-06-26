cask "papr" do
  arch arm: "aarch64", intel: "13e51073542ec0ce87889fff29112d103862363a7e9514278f9fa6b5c5b101c2"

  version "0.11.0"
  sha256 arm:   "e4b12c03ba9f815ce2bf72eb7e301b6259287f310498ab5382a54eaa13dbc4b2",
         intel: "13e51073542ec0ce87889fff29112d103862363a7e9514278f9fa6b5c5b101c2"

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
