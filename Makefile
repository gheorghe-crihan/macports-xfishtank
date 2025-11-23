PORTREVISION=	2
MASTER_SITES=	DEBIAN
MASTER_SITE_SUBDIR=	pool/main/x/xfishtank/
DISTNAME=	xfishtank_2.5.orig

MAINTAINER=	kidon@posteo.de
COMMENT=	Make fish swim in the background of your screen
WWW=	https://sources.debian.org/src/xfishtank/2.5-1/README


LIB_DEPENDS=	libImlib2.so:graphics/imlib2


XSSHACKSDIR=    bin/xscreensaver-hacks
XSSCONFDIR=     share/xscreensaver/config

pre-build:
	${CC} ${WRKSRC}/makeh.c -o ${WRKSRC}/makeh

.include <bsd.port.mk>
