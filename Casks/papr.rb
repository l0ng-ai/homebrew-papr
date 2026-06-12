cask "papr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "d0f3033303ca8324ab257ed16799c213626d5708008aeef01f94a94df544befb",
         intel: "a455242068c31b8afa7f9692b2a28b11b480ced94eb116770d53aa550fd975a4"

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
