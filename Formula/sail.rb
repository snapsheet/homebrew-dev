require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.5/sail-1.0.5.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "462013ed3b8b96b7bdd9194c45ea7f36fd0eeea6727a05d499fd3168fd7e51e1"
  license "MIT"

  depends_on "jq"
  depends_on "coreutils"
  depends_on "python-yq"
  depends_on "awscli" => "2"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end