require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.8/sail-1.0.8.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "9db91aaa49fddcbcfde39211e369783fde35716bcf304099a23b67213d0a6152"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end