class Turboalias < Formula
  include Language::Python::Virtualenv

  desc "Fast shell alias management tool"
  homepage "https://github.com/yourusername/turboalias"
  url "https://files.pythonhosted.org/packages/source/t/turboalias/turboalias-0.0.1.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/turboalias", "--version"
  end
end