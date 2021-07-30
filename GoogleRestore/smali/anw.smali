.class final Lanw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczm;


# instance fields
.field final synthetic a:Lany;


# direct methods
.method public constructor <init>(Lany;)V
    .locals 0

    iput-object p1, p0, Lanw;->a:Lany;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lanw;->a:Lany;

    iget-object p1, p1, Lany;->a:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "App updates successfully paused"

    invoke-virtual {p1, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lanw;->a:Lany;

    iget-object v0, v0, Lany;->a:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Laqd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Laqd;->a:Ljava/lang/String;

    .line 2
    const-string v3, "App updates pause failed"

    invoke-virtual {v0, v3, v1}, Laqd;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
