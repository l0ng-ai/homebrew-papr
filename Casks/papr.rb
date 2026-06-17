cask "papr" do
  arch arm: "aarch64", intel: "19778c253d990f71dd6959b7f3921ac9c4308b3200ad301690f3d69b39615746"

  version "0.8.0"
  sha256 arm:   "ad09bfec64fa7d76d72e58aad85f782e5022827fed31c2cffa35168401459dbd",
         intel: "19778c253d990f71dd6959b7f3921ac9c4308b3200ad301690f3d69b39615746"

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
