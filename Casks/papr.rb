cask "papr" do
  arch arm: "aarch64", intel: "8c83dad99c8001c7029857ca7b9e461734b20aafacaca96318662f5ba0e79317"

  version "0.7.1"
  sha256 arm:   "23b7911a592c8310eeb6967776a78829d4a8e5329b1f269f8d2452fb6d1acbc0",
         intel: "8c83dad99c8001c7029857ca7b9e461734b20aafacaca96318662f5ba0e79317"

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
