# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc 'Your trusty tool for retrieving AWS credentials securely via SAML'
  homepage 'https://github.com/moritzheiber/crowbar'
  version '0.0.9'
  bottle :unneeded

  if OS.mac?
    url 'https://github.com/moritzheiber/crowbar/releases/download/v0.0.9/crowbar-x86_64-macos'
    sha256 '906e07fe9601a6aed4d1b2ceae5b7aa8caab5a827cb25e98b6fa67cc00456d93'
  end

  def install
    bin.install 'crowbar'
  end

  test do
    system "#{bin}/crowbar --version"
  end
end
