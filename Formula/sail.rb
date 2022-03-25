require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.15/sail-1.0.15.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "ea2ce895e637a0859d8ecdcc26e10d268397bd529e7a42d3f297d3246239628a"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end