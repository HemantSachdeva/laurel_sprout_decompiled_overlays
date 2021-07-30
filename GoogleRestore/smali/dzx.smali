.class final Ldzx;
.super Ldyg;
.source "PG"


# instance fields
.field final synthetic a:Ldzy;


# direct methods
.method public constructor <init>(Ldzy;)V
    .locals 0

    iput-object p1, p0, Ldzx;->a:Ldzy;

    invoke-direct {p0}, Ldyg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldzx;->a:Ldzy;

    iget-object v0, v0, Ldzy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ldyc;)V
    .locals 3

    .line 1
    invoke-static {}, Ldye;->a()Ldyd;

    move-result-object v0

    new-instance v1, Ldwg;

    iget-object v2, p0, Ldzx;->a:Ldzy;

    iget-object v2, v2, Ldzy;->a:Ljava/net/SocketAddress;

    invoke-direct {v1, v2}, Ldwg;-><init>(Ljava/net/SocketAddress;)V

    .line 2
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ldyd;->a:Ljava/util/List;

    sget-object v1, Ldvb;->b:Ldvb;

    iput-object v1, v0, Ldyd;->b:Ldvb;

    .line 3
    invoke-virtual {v0}, Ldyd;->a()Ldye;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Ldyc;->a(Ldye;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
