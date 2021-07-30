.class final synthetic Laoa;
.super Ljava/lang/Object;

# interfaces
.implements Lczd;


# instance fields
.field private final a:Laoh;

.field private final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Laoh;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoa;->a:Laoh;

    iput-object p2, p0, Laoa;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lczu;
    .locals 8

    const-string v0, "error"

    iget-object v1, p0, Laoa;->a:Laoh;

    iget-object v2, p0, Laoa;->b:Landroid/os/Bundle;

    check-cast p1, Laap;

    invoke-static {}, Ldac;->b()Ldac;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Laoh;->b:Lacw;

    const-string v6, "Requesting play to pause app updates"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Laod;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, v1, v6, v3}, Laod;-><init>(Laoh;Landroid/os/Handler;Ldac;)V

    invoke-interface {p1, v5, v2}, Laap;->a(Landroid/os/ResultReceiver;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v1, Laoh;->b:Lacw;

    const-string v2, "Error pausing app updates="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    :goto_0
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ldac;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, v1, Laoh;->b:Lacw;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "RemoteException while pausing app updates"

    invoke-virtual {v0, v4, p1, v2}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Ldac;->a(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Laoh;->a(Ldac;)V

    return-object v3
.end method
