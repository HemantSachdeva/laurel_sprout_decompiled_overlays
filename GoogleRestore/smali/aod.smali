.class final Laod;
.super Landroid/os/ResultReceiver;
.source "PG"


# instance fields
.field final synthetic a:Ldac;

.field final synthetic b:Laoh;


# direct methods
.method public constructor <init>(Laoh;Landroid/os/Handler;Ldac;)V
    .locals 0

    iput-object p1, p0, Laod;->b:Laoh;

    iput-object p3, p0, Laod;->a:Ldac;

    .line 1
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Laod;->b:Laoh;

    .line 3
    sget-object v0, Laoh;->a:Landroid/content/Intent;

    .line 4
    iget-object p1, p1, Laoh;->b:Lacw;

    new-array p2, p2, [Ljava/lang/Object;

    .line 3
    const-string v0, "App updates paused"

    invoke-virtual {p1, v0, p2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Laod;->a:Ldac;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Ldac;->a(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Laod;->b:Laoh;

    .line 6
    sget-object v0, Laoh;->a:Landroid/content/Intent;

    .line 7
    iget-object p1, p1, Laoh;->b:Lacw;

    new-array p2, p2, [Ljava/lang/Object;

    .line 6
    const-string v0, "App updates pause cancelled"

    invoke-virtual {p1, v0, p2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Laod;->a:Ldac;

    .line 8
    new-instance p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p1, p2}, Ldac;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Laod;->b:Laoh;

    .line 9
    sget-object v1, Laoh;->a:Landroid/content/Intent;

    .line 10
    iget-object v0, v0, Laoh;->b:Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "Pause app updates result: %d"

    invoke-virtual {v0, p1, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
