.class final Ldyj;
.super Ldyb;
.source "PG"


# instance fields
.field final synthetic a:Ldyl;


# direct methods
.method public constructor <init>(Ldyl;)V
    .locals 0

    iput-object p1, p0, Ldyj;->a:Ldyl;

    invoke-direct {p0}, Ldyb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URI;Ldxz;)Ldyg;
    .locals 2

    iget-object v0, p0, Ldyj;->a:Ldyl;

    invoke-virtual {v0}, Ldyl;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldyh;

    .line 4
    invoke-virtual {v1, p1, p2}, Ldyb;->a(Ljava/net/URI;Ldxz;)Ldyg;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldyj;->a:Ldyl;

    invoke-virtual {v0}, Ldyl;->b()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyh;

    invoke-virtual {v0}, Ldyh;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
