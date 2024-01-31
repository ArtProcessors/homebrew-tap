require "formula"
require_relative "lib/private_strategy"

class Gazelle < Formula
  desc "Gazelle Schema code generator and validator"
  homepage "https://github.com/ArtProcessors/ap-gazelle-schema-mobile"
  url "https://github.com/ArtProcessors/ap-gazelle-schema-mobile/releases/download/2.6.1/gazelle.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.6.1"
  sha256 "0edf94ee4f7158a45e80fcfb29bd2e530d53afa8311d7cfbc1d55b3b5758bd4a"

  def install
    bin.install "gazelle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gazelle --version")
  end
end
