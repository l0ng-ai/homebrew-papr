cask "papr" do
  arch arm: "aarch64", intel: "f1f81f334941608549ee471f9fdcfd3aff5a96f90de1e4b29f02f274cfa5162c"

  version "0.16.1"
  sha256 arm:   "cdd96934fca526aa11744d807981907585ccd7bbe5df0a4ccef8d87b0aa45141",
         intel: "f1f81f334941608549ee471f9fdcfd3aff5a96f90de1e4b29f02f274cfa5162c"

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
