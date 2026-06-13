cask "papr" do
  arch arm: "aarch64", intel: "8c51a510dcc9f593cea950d21750b7bc5f5d9acdd1756d911f55f094c664589a"

  version "0.7.0"
  sha256 arm:   "54e72692b22e0fa4d4cf056b3fe4d1a2fd7fba120220d3bc659caeaf59303bf3",
         intel: "8c51a510dcc9f593cea950d21750b7bc5f5d9acdd1756d911f55f094c664589a"

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
