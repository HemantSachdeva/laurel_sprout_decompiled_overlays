.class public Ldvo;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ldvi;Ljava/util/List;)Ldvi;
    .locals 2

    .line 1
    const-string v0, "channel"

    invoke-static {p0, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvm;

    new-instance v1, Ldvn;

    .line 3
    invoke-direct {v1, p0, v0}, Ldvn;-><init>(Ldvi;Ldvm;)V

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method
