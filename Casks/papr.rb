cask "papr" do
  arch arm: "aarch64", intel: "f9cc749ea1ab334295a9823ca1c867ac7297fee847515cb390773939dd060c68"

  version "0.15.0"
  sha256 arm:   "047449d3493b41e072d81e42266e3674d5e6e8832051e58cc4dd847a88dfad6c",
         intel: "f9cc749ea1ab334295a9823ca1c867ac7297fee847515cb390773939dd060c68"

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
