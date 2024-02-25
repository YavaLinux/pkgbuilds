# Maintainer: Hamed Mahmoudkhani <ainyava+distro@gmail.com>
pkgname=ainyava-calamares-git
_destname="/etc"
pkgver=1.0.0
pkgrel=1
pkgdesc="YavaLinux customized calamares"
arch=('any')
url="https://github.com/yavalinux/ainyava-calamares"
license=('GPL3')
makedepends=('git')
depends=()
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)
source=("$pkgname::git+$url.git")
sha256sums=('SKIP')

package() {
	install -dm755 ${pkgdir}${_destname}
	cp -r ${srcdir}/${pkgname}${_destname}/* ${pkgdir}${_destname}
}
