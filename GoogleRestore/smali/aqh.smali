.class public final Laqh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Landroid/content/Intent;

.field private static final b:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    .line 1
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    const-string v2, "com.android.vending.setup.IPlaySetupService.BIND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Laqh;->a:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    .line 4
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6
    const-string v1, "com.android.vending.setup.IPlaySetupServiceV2.BIND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Laqh;->b:Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/content/Context;)Laao;
    .locals 4

    new-instance v0, Lapl;

    .line 16
    invoke-direct {v0}, Lapl;-><init>()V

    sget-object v1, Laqh;->b:Landroid/content/Intent;

    .line 17
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0}, Lapl;->a()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 24
    :cond_0
    nop

    .line 20
    const-string v2, "com.android.vending.setup.IPlaySetupServiceV2"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 21
    instance-of v3, v2, Laap;

    if-eqz v3, :cond_1

    .line 22
    move-object v1, v2

    check-cast v1, Laap;

    goto :goto_0

    :cond_1
    new-instance v2, Laan;

    .line 23
    invoke-direct {v2, v1}, Laan;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    .line 19
    :goto_0
    new-instance v2, Laao;

    .line 24
    invoke-direct {v2, p0, v0, v1}, Laao;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Laap;)V

    return-object v2

    .line 18
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Cannot bind to com.android.vending.setup.IPlaySetupServiceV2.BIND"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;)Laal;
    .locals 4

    new-instance v0, Lapl;

    .line 7
    invoke-direct {v0}, Lapl;-><init>()V

    sget-object v1, Laqh;->a:Landroid/content/Intent;

    .line 8
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lapl;->a()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 15
    :cond_0
    nop

    .line 11
    const-string v2, "com.android.vending.setup.IPlaySetupService"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 12
    instance-of v3, v2, Laam;

    if-eqz v3, :cond_1

    .line 13
    move-object v1, v2

    check-cast v1, Laam;

    goto :goto_0

    :cond_1
    new-instance v2, Laak;

    .line 14
    invoke-direct {v2, v1}, Laak;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    .line 10
    :goto_0
    new-instance v2, Laal;

    .line 15
    invoke-direct {v2, p0, v0, v1}, Laal;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Laam;)V

    return-object v2

    .line 9
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Cannot bind to com.android.vending.setup.IPlaySetupService.BIND"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
