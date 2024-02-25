# Maintainer: Hamed Mahmoudkhani <ainyava@gmail.com>
pkgname=yavalinux-system-git
_destname1="/etc/"
_destname1="/usr/"
pkgver=1.0.0
pkgrel=1
epoch=
pkgdesc="Yavalinux System Configurations"
arch=('any')
url="https://github.com/yavalinux/yavalinux-system"
license=('GPL3')
groups=()
depends=()
makedepends=('git')
checkdepends=()
optdepends=()
provides=("$pkgname=$pkgver")
conflicts=("$pkgname")
replaces=()
backup=()
options=()
install=
changelog=
source=("$pkgname::git+$url.git")
noextract=()
sha256sums=('SKIP')
validpgpkeys=()

package() {
	install -dm755 ${pkgdir}${_destname1}
	cp -r  ${srcdir}/${pkgname}${_destname1}* ${pkgdir}${_destname1}

	install -dm755 ${pkgdir}${_destname2}
	cp -r  ${srcdir}/${pkgname}${_destname2}* ${pkgdir}${_destname2}
}
