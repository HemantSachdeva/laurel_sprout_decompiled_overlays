.class public final Leii;
.super Lcyr;
.source "PG"


# instance fields
.field public final a:Ldvl;


# direct methods
.method public constructor <init>(Ldvl;)V
    .locals 0

    invoke-direct {p0}, Lcyr;-><init>()V

    iput-object p1, p0, Leii;->a:Ldvl;

    return-void
.end method


# virtual methods
.method protected final d()V
    .locals 3

    iget-object v0, p0, Leii;->a:Ldvl;

    .line 1
    const-string v1, "GrpcFuture was cancelled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldvl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final g()Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Leii;->a:Ldvl;

    .line 3
    const-string v2, "clientCall"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
