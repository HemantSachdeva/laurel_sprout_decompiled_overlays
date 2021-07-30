.class public abstract Ldco;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final a:Landroid/content/Context;

.field public final b:Lbpl;

.field protected final c:Ldcg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldcg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldco;->c:Ldcg;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ldco;->a:Landroid/content/Context;

    new-instance p1, Lbpl;

    .line 2
    invoke-direct {p1}, Lbpl;-><init>()V

    iput-object p1, p0, Ldco;->b:Lbpl;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Ldcw;)V
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ldco;->c:Ldcg;

    .line 3
    invoke-virtual {v0}, Ldcg;->a()Ldcw;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    const/16 v1, 0x9

    invoke-virtual {v0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lacv;->a(Landroid/os/Parcel;)Z

    move-result v2

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ldco;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Firebase Crash reporting is not enabled"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ldco;->a(Ldcw;)V

    iget-object v0, p0, Ldco;->b:Lbpl;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lbpl;->a(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Firebase Crash api is not available"

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v1, p0, Ldco;->a:Landroid/content/Context;

    .line 12
    invoke-static {v1}, Lbjg;->c(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Ldco;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseCrash"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Ldco;->b:Lbpl;

    .line 14
    invoke-virtual {v1, v0}, Lbpl;->a(Ljava/lang/Exception;)V

    return-void
.end method
