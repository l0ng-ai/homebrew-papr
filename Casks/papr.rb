cask "papr" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "304f9944594648b7170b55523748c614efe7d868c2be34c916a7da67dd6a03f2",
         intel: "69f80ededc117fe316701fedba2d84e569c8f6e0ab1c4ece35845cc1c0a0712e"

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
