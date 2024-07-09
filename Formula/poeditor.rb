require "formula"
require_relative "lib/private_strategy"

class Poeditor < Formula
  desc "POEditor CLI tool"
  homepage "https://github.com/ArtProcessors/ap-poeditor-tool-macos"
  url "https://github.com/ArtProcessors/ap-poeditor-tool-macos/releases/download/2.6.1/poeditor.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.6.1"
  sha256 "34df2bf050c953a0c0635d346149c5bd96271d65edb77a0dea8458b018ccde19"

  def install
    bin.install "poeditor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poeditor --version")
  end
end
