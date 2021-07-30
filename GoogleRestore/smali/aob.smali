.class final synthetic Laob;
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

    iput-object p1, p0, Laob;->a:Laoh;

    iput-object p2, p0, Laob;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lczu;
    .locals 8

    const-string v0, "error"

    iget-object v1, p0, Laob;->a:Laoh;

    iget-object v2, p0, Laob;->b:Landroid/os/Bundle;

    check-cast p1, Laap;

    invoke-static {}, Ldac;->b()Ldac;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Laoh;->b:Lacw;

    const-string v6, "Requesting play to resume app updates"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Laap;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v1, Laoh;->b:Lacw;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v5, "Error resuming app updates: %s"

    invoke-virtual {v0, v5, v2}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ldac;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Ldac;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, v1, Laoh;->b:Lacw;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "RemoteException when resuming app updates"

    invoke-virtual {v0, v4, p1, v2}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Ldac;->a(Ljava/lang/Throwable;)Z

    :goto_0
    invoke-virtual {v1, v3}, Laoh;->a(Ldac;)V

    return-object v3
.end method
