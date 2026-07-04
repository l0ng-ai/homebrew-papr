cask "papr" do
  arch arm: "aarch64", intel: "952dbc70834e2ca15cc55ffef12fca2c19df68dd11ee1e245ef35f7716c1d280"

  version "0.13.0"
  sha256 arm:   "69c29419f86f1b23ef323ef47adbcc25c2d7e7f8c8e3914f22eaa02306c5cfee",
         intel: "952dbc70834e2ca15cc55ffef12fca2c19df68dd11ee1e245ef35f7716c1d280"

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
