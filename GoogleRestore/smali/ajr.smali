.class final Lajr;
.super Landroid/os/ResultReceiver;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 2
    sget-object v0, Lajs;->a:Laqd;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 2
    const-string p1, "Received resultCode = %d from runFinalHold, bundle = %s"

    invoke-virtual {v0, p1, v1}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lada;->a()Lada;

    move-result-object p1

    invoke-virtual {p1}, Lada;->e()V

    return-void
.end method
