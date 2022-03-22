require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.12/sail-1.0.12.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "e85ba71e9cf2d4248fc40db3d88d50a88fe829f204347250bba5d9d3b9d08f21"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end