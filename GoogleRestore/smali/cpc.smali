.class abstract Lcpc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcpg;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcpc;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcpg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcpc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final close()V
    .locals 5

    .line 1
    sget-object v0, Lcpm;->b:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpl;

    .line 3
    iget-object v1, v0, Lcpl;->b:Lcpg;

    .line 4
    invoke-interface {v1}, Lcpg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcpg;->b()Ljava/lang/String;

    move-result-object v3

    if-ne p0, v1, :cond_0

    .line 5
    invoke-interface {v1}, Lcpg;->a()Lcpg;

    move-result-object v1

    invoke-static {v0, v1}, Lcpm;->a(Lcpl;Lcpg;)Lcpg;

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 6
    const-string v2, "Wrong trace, expected %s but got %s"

    invoke-static {v2, v1}, Lcrq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 7
    invoke-static {p0}, Lcpm;->b(Lcpg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
