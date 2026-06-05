cask "papr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "c12e9e94797d8c43ac02e5ee17d1547dd18bd16ba97f79208e9b62923b787368",
         intel: "b585dcf735d2d144a78db70de009e430c36c9c6ff0b51c3d93b89627788702eb"

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
