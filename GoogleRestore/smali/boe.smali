.class public final Lboe;
.super Lbib;
.source "PG"

# interfaces
.implements Lben;


# instance fields
.field public final q:Ljava/lang/Integer;

.field private final r:Z

.field private final s:Lbho;

.field private final t:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lbho;Landroid/os/Bundle;Lbet;Lbeu;)V
    .locals 7

    .line 1
    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbib;-><init>(Landroid/content/Context;Landroid/os/Looper;ILbho;Lbfu;Lbgp;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lboe;->r:Z

    iput-object p3, p0, Lboe;->s:Lbho;

    iput-object p4, p0, Lboe;->t:Landroid/os/Bundle;

    iget-object p1, p3, Lbho;->f:Ljava/lang/Integer;

    iput-object p1, p0, Lboe;->q:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lbob;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lbob;

    goto :goto_0

    :cond_1
    new-instance v0, Lbob;

    invoke-direct {v0, p1}, Lbob;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final d()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lboe;->r:Z

    return v0
.end method

.method protected final r()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lboe;->s:Lbho;

    iget-object v0, v0, Lbho;->c:Ljava/lang/String;

    iget-object v1, p0, Lbhl;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lboe;->t:Landroid/os/Bundle;

    iget-object v1, p0, Lboe;->s:Lbho;

    iget-object v1, v1, Lbho;->c:Ljava/lang/String;

    .line 3
    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lboe;->t:Landroid/os/Bundle;

    return-object v0
.end method
