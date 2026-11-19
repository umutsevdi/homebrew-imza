cask "imza" do
  version "0.7.5"
  sha256 "4107dd491d606eed020e831a7553b68bec41d625925ae0d297c15d1f65b55bf7"

  url "https://github.com/umutsevdi/imza/releases/download/v#{version}/imza-#{version}-macos-arm64.pkg",
      verified: "github.com/umutsevdi/imza/"
  name "Imza"
  desc "Open source terminal coding agent that keeps you in the loop"
  homepage "https://imza.run"

  pkg "imza-#{version}-macos-arm64.pkg"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  uninstall pkgutil: "com.umutsevdi.imza"
end
