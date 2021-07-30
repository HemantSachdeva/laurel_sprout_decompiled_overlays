.class public final Lanr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    sget-object p1, Lant;->a:Laqd;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "App updates successfully paused"

    invoke-virtual {p1, v1, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lanx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lant;->a:Laqd;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "App updates pause failed because disabled"

    invoke-virtual {p1, v1, v0}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lant;->a:Laqd;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "App updates pause failed"

    invoke-virtual {v0, v2, p1, v1}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
