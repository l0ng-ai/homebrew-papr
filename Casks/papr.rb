cask "papr" do
  arch arm: "aarch64", intel: "47d42b7014784ca78c5ffb16366b3e7d7d5056559fb2b19fd485096e56ef1968"

  version "0.16.0"
  sha256 arm:   "de245c0dbb5e9ed5b9907c976773468e43dc2d9082755a920ed21f5cf2453d03",
         intel: "47d42b7014784ca78c5ffb16366b3e7d7d5056559fb2b19fd485096e56ef1968"

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
