require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.10/sail-1.0.10.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "d3ebdffdbea845848ec1ba2388cb93d0be510ac8288e4571d9bd47936489b793"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end