require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.7/sail-1.0.7.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "76583cbba2a9402fb119d74fc1b6d6e21f50cace9f4fd00549979a148eac6522"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end