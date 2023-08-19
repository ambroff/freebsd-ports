PORTNAME=	braft
DISTVERSION=	1.1.2
DISTVERSIONPREFIX=	v
PORTEPOCH=	1
CATEGORIES=	devel

MAINTAINER=	kyle@ambroffkao.com
COMMENT=	An industrial-grade C++ implementation of RAFT
WWW=		https://github.com/baidu/braft

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	leveldb>0:databases/leveldb \
		protoc:devel/protobuf

#LIB_DEPENDS=	/usr/local/lib/libbrpc.a:devel/brpc
LIB_DEPENDS=	libleveldb.so:databases/leveldb \
		libprotobuf.so:devel/protobuf \
		libgflags.so:devel/gflags

USES=		cmake:testing compiler:c++14-lang cpe pathfix ssl
CPE_VENDOR=	apache
USE_LDCONFIG=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	baidu

CMAKE_OFF=	BUILD_BRAFT_TOOLS BUILD_UNIT_TESTS

post-stage:
	${MKDIR} ${STAGEDIR}${PREFIX}/share/cmake/Modules
	${INSTALL_DATA} \
		Findbraft.cmake \
		${STAGEDIR}${PREFIX}/share/cmake/Modules/Findbraft.cmake

.include <bsd.port.mk>
