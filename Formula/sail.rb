require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.17/sail-1.0.17.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "d42098c5f72b9cb7ecb01325736593ce54a0038d41b943c91740477bd89039ce"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end