class AmazonEcsCli < Formula
  desc "Custom fork of he Amazon ECS CLI tool, supporting ARM64 images on Fargate"
  homepage "https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html"
  url "https://github.com/ArtProcessors/amazon-ecs-cli/releases/download/v1.22.0%2Bap/ecs-cli-darwin-amd64-1.22.0+ap.tgz"

  # These two values must change when new ecs-cli versions are released
  version "1.22.0+ap"
  sha256 "6a0183a2a269a8c765d2e0283ae6de2e913866f188d413a388299b290796c079"

  license "Apache-2.0"

  conflicts_with "amazon-ecs-cli"

  def install
    bin.install "ecs-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ecs-cli --version")
  end
end
