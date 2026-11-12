cask "imza" do
  version "0.7.4"
  sha256 "f3e9c095b097d4ce3ff7dd7b2eee819f215be50128abae2d2ad184c9e1e083ea"

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
