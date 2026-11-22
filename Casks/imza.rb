cask "imza" do
  version "0.7.6"
  sha256 "7ba0a6fda52db968156c5652c0c508f144a3e483123aa5db0d137a354df60b69"

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
