.class public final Laum;
.super Lbib;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lbho;Lbet;Lbeu;)V
    .locals 7

    .line 1
    const/16 v3, 0xb5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lbib;-><init>(Landroid/content/Context;Landroid/os/Looper;ILbho;Lbfu;Lbgp;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.backup.internal.IG1RestoreService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Laun;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Laun;

    goto :goto_0

    :cond_1
    new-instance v0, Laun;

    invoke-direct {v0, p1}, Laun;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.backup.G1_RESTORE"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.backup.internal.IG1RestoreService"

    return-object v0
.end method

.method public final c()[Lbdv;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lbdv;

    .line 2
    sget-object v1, Lauf;->f:Lbdv;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lauf;->h:Lbdv;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lauf;->g:Lbdv;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final d()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method
