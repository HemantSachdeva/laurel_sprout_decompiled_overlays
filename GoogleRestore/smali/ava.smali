.class public final Lava;
.super Lacu;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field final synthetic a:Laqw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    const-string v0, "com.google.android.gms.backup.migrate.helper.IVoidCallbacks"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Laqw;)V
    .locals 0

    iput-object p1, p0, Lava;->a:Laqw;

    .line 1
    const-string p1, "com.google.android.gms.backup.migrate.helper.IVoidCallbacks"

    invoke-direct {p0, p1}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    .line 3
    const/4 p1, 0x0

    return p1

    .line 0
    :cond_0
    iget-object p1, p0, Lava;->a:Laqw;

    .line 4
    new-instance p3, Lari;

    invoke-direct {p3}, Lari;-><init>()V

    invoke-virtual {p1, p3}, Laqw;->a(Landroid/os/RemoteException;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lava;->a:Laqw;

    sget-object p3, Larj;->a:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {p1, p3}, Laqw;->a(Ljava/lang/Runnable;)V

    .line 4
    :goto_0
    return p2
.end method
