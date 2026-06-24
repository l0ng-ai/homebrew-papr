cask "papr" do
  arch arm: "aarch64", intel: "e3235d1b6033ea477451eed04fde3a9aad6b8375f95542127e38ea2aaeb19e5d"

  version "0.10.0"
  sha256 arm:   "cb95d657750528dfd9e07f3e7d14b38297e75da2f52faa2d327e0a4da26ff3b1",
         intel: "e3235d1b6033ea477451eed04fde3a9aad6b8375f95542127e38ea2aaeb19e5d"

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
