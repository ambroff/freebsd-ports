PORTNAME=	brpc
DISTVERSION=	1.6.0
PORTEPOCH=	1
CATEGORIES=	devel

MAINTAINER=	kyle@ambroffkao.com
COMMENT=	brpc is an Industrial-grade RPC framework
WWW=		https://github.com/apache/brpc

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	protoc:devel/protobuf \
		leveldb>0:databases/leveldb

USES=		cmake:testing compiler:c++14-lang cpe
CPE_VENDOR=	apache
USE_LDCONFIG=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	apache

.include <bsd.port.mk>
