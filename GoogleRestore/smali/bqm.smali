.class public final Lbqm;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lbc;)Lai;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lai;

    .line 1
    invoke-interface {p0}, Lak;->ac()Laj;

    move-result-object v1

    instance-of v2, p0, Lg;

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {p0}, Lg;->R()Lae;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lag;->a()Lag;

    move-result-object p0

    .line 1
    :goto_0
    invoke-direct {v0, v1, p0}, Lai;-><init>(Laj;Lae;)V

    return-object v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    :cond_0
    return-void
.end method

.method public static final a()Z
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->a()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crash/FirebaseCrash;->d()Z

    move-result v0

    return v0
.end method
