cask "papr" do
  arch arm: "aarch64", intel: "1e27fd03532df873ab36c51638a8d19beafc4a98ff4ff8cbf28f624f3d6dfb49"

  version "0.14.0"
  sha256 arm:   "115e8df0f497bb716ecd6910ca7a54d0d7d696ce5ea02ebe884819eca66339b7",
         intel: "1e27fd03532df873ab36c51638a8d19beafc4a98ff4ff8cbf28f624f3d6dfb49"

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
