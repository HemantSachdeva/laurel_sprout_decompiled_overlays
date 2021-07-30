.class public final Laba;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laay;

    .line 1
    invoke-direct {v0, p1}, Laay;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Laba;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Labj;Labo;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Laba;->a(Labj;Labo;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Labj;Labo;Ljava/lang/Runnable;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Labj;->c()V

    .line 7
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Labj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Laba;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Laaz;

    .line 8
    invoke-direct {v1, p1, p2, p3}, Laaz;-><init>(Labj;Labo;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Labj;Labr;)V
    .locals 3

    .line 2
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Labj;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Labo;->a(Labr;)Labo;

    move-result-object p2

    iget-object v0, p0, Laba;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Laaz;

    .line 4
    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Laaz;-><init>(Labj;Labo;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
