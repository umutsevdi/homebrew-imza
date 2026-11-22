cask "imza" do
  version "0.7.6"
  sha256 "6c5382d99a0b06c291dea116b2e64a511788e81871625ae6ee20a41bb948dad5"

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
