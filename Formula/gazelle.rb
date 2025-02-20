require "formula"
require_relative "lib/private_strategy"

class Gazelle < Formula
  desc "Gazelle Schema code generator and validator"
  homepage "https://github.com/ArtProcessors/ap-gazelle-schema-mobile"
  url "https://github.com/ArtProcessors/ap-gazelle-schema-mobile/releases/download/2.8.0/gazelle.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.8.0"
  sha256 "287969686192d27c606eebad907117288a0a78f1c1870102c26f5a6e43711e00"

  def install
    bin.install "gazelle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gazelle --version")
  end
end
