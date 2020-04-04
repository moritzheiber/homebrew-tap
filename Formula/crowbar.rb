# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc 'Your trusty tool for retrieving AWS credentials securely via SAML'
  homepage 'https://github.com/moritzheiber/crowbar'
  version '0.3.2'
  bottle :unneeded

  if OS.mac?
    url 'https://github.com/moritzheiber/crowbar/releases/download/v0.3.2/crowbar-x86_64-macos'
    sha256 '8d6f912fe4b668f60bc1e425d37066dc953e2f6a0e89b8c87196d0f1b4a98918'
  end

  def install
    mv 'crowbar-x86_64-macos', 'crowbar'
    bin.install 'crowbar'
  end

  test do
    system "#{bin}/crowbar --version"
  end
end
