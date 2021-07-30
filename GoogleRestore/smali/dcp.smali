.class public final Ldcp;
.super Ldco;
.source "PG"


# instance fields
.field private final d:Ljava/lang/Throwable;

.field private final e:Ldcz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldcg;Ljava/lang/Throwable;Ldcz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ldco;-><init>(Landroid/content/Context;Ldcg;)V

    iput-object p3, p0, Ldcp;->d:Ljava/lang/Throwable;

    iput-object p4, p0, Ldcp;->e:Ldcz;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Failed to report uncaught exception"

    return-object v0
.end method

.method protected final a(Ldcw;)V
    .locals 6

    iget-object v0, p0, Ldcp;->e:Ldcz;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Landroid/os/Bundle;

    .line 3
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x1

    .line 4
    const-string v5, "fatal"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    const-string v4, "timestamp"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v0, Ldcz;->a:Ldbe;

    .line 6
    invoke-interface {v0}, Ldbe;->a()V

    const-wide/16 v0, 0xc8

    .line 7
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    const-string v0, "Failed to wait for analytics event to be logged"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Ldcp;->d:Ljava/lang/Throwable;

    .line 9
    invoke-static {v0}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lact;->h()Landroid/os/Parcel;

    move-result-object v1

    .line 11
    invoke-static {v1, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v0, 0x5

    .line 12
    invoke-virtual {p1, v0, v1}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method protected final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
