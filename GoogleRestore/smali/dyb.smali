.class public abstract Ldyb;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "params-default-port"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    .line 2
    const-string v0, "params-proxy-detector"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    .line 3
    const-string v0, "params-sync-context"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    .line 4
    const-string v0, "params-parser"

    invoke-static {v0}, Ldva;->a(Ljava/lang/String;)Ldva;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;Ldxz;)Ldyg;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract a()Ljava/lang/String;
.end method
