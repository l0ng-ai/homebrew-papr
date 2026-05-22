cask "papr" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "c83f4af4e7adec1630651c456e57610f34b2d8b0039c46f164d5dc1e72bf2232",
         intel: "4bc3b30bf9cdca6b8d8bdd6859565cbfe1260417771db0286e1c9595aecd52fc"

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
