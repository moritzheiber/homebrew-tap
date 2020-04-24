# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc 'Your trusty tool for retrieving AWS credentials securely via SAML'
  homepage 'https://github.com/moritzheiber/crowbar'
  version '0.3.6'
  bottle :unneeded

  if OS.mac?
    url 'https://github.com/moritzheiber/crowbar/releases/download/v0.3.6/crowbar-x86_64-macos'
    sha256 '35cadc4ba4dd769ffb98e65aa6e501aa48b1e331c11b7b273a91b72aa8abcd37'
  end

  def install
    mv 'crowbar-x86_64-macos', 'crowbar'
    bin.install 'crowbar'
  end

  test do
    system "#{bin}/crowbar --version"
  end
end
