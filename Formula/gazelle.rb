require "formula"
require_relative "lib/private_strategy"

class Gazelle < Formula
  desc "Gazelle Schema code generator and validator"
  homepage "https://github.com/ArtProcessors/ap-gazelle-schema-mobile"
  url "https://github.com/ArtProcessors/ap-gazelle-schema-mobile/releases/download/2.9.0/gazelle.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.9.0"
  sha256 "da312c523fd639d90afe5d4f5a7120d8a5c02d64e04cdc76ab175b730e76fa86"

  def install
    bin.install "gazelle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gazelle --version")
  end
end
