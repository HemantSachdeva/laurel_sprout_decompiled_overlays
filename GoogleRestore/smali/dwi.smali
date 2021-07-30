.class public final Ldwi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/net/SocketAddress;

.field private d:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldwj;
    .locals 5

    new-instance v0, Ldwj;

    iget-object v1, p0, Ldwi;->c:Ljava/net/SocketAddress;

    iget-object v2, p0, Ldwi;->d:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Ldwi;->a:Ljava/lang/String;

    iget-object v4, p0, Ldwi;->b:Ljava/lang/String;

    .line 1
    invoke-direct {v0, v1, v2, v3, v4}, Ldwj;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/net/InetSocketAddress;)V
    .locals 1

    .line 3
    const-string v0, "targetAddress"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ldwi;->d:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public final a(Ljava/net/SocketAddress;)V
    .locals 1

    .line 2
    const-string v0, "proxyAddress"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ldwi;->c:Ljava/net/SocketAddress;

    return-void
.end method
