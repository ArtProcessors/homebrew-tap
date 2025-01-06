require "formula"
require_relative "lib/private_strategy"

class Gazelle < Formula
  desc "Gazelle Schema code generator and validator"
  homepage "https://github.com/ArtProcessors/ap-gazelle-schema-mobile"
  url "https://github.com/ArtProcessors/ap-gazelle-schema-mobile/releases/download/2.7.0/gazelle.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.7.0"
  sha256 "1d5a637027761a2639e666adb803ffb1ff6d39b84f1025d2b81b55f39bbf45fc"

  def install
    bin.install "gazelle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gazelle --version")
  end
end
