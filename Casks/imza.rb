cask "imza" do
  version "0.7.1"
  sha256 "dfeb8f8378b4b5749df900eda3b414ee62c76198e2c2eec6250a2fd286a85be1"

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
