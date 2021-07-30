.class Ledh;
.super Ldxk;
.source "PG"


# instance fields
.field public final a:Ldxk;


# direct methods
.method public constructor <init>(Ldxk;)V
    .locals 0

    invoke-direct {p0}, Ldxk;-><init>()V

    iput-object p1, p0, Ledh;->a:Ldxk;

    return-void
.end method


# virtual methods
.method public final a(Ldxx;Ldvh;)Ldvl;
    .locals 1

    iget-object v0, p0, Ledh;->a:Ldxk;

    .line 2
    invoke-virtual {v0, p1, p2}, Ldxk;->a(Ldxx;Ldvh;)Ldvl;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ledh;->a:Ldxk;

    .line 1
    invoke-virtual {v0}, Ldxk;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Ledh;->a:Ldxk;

    .line 4
    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
