cask "papr" do
  arch arm: "aarch64", intel: "f0c8c4dc784cd456d72e966d69e723e573ccc45275e3c2b50c648ea4f0fa23dd"

  version "0.9.0"
  sha256 arm:   "eecdf9c996b6d0db39a57c5d487892cc02bb7bc7b81e33d13a16c2e73d6882af",
         intel: "f0c8c4dc784cd456d72e966d69e723e573ccc45275e3c2b50c648ea4f0fa23dd"

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
