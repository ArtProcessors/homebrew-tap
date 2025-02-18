require "formula"
require_relative "lib/private_strategy"

class Gazelle < Formula
  desc "Gazelle Schema code generator and validator"
  homepage "https://github.com/ArtProcessors/ap-gazelle-schema-mobile"
  url "https://github.com/ArtProcessors/ap-gazelle-schema-mobile/releases/download/2.7.1/gazelle.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.7.1"
  sha256 "eff9cd587a312afc183e5a12fcd5b050e78a2e65f2bcfbba1371432d3610dad0"

  def install
    bin.install "gazelle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gazelle --version")
  end
end
