.class public final Lbfg;
.super Lbfj;
.source "PG"


# instance fields
.field protected final a:Lbfn;


# direct methods
.method public constructor <init>(Lbfn;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbfj;-><init>(I)V

    iput-object p1, p0, Lbfg;->a:Lbfn;

    return-void
.end method


# virtual methods
.method public final a(Lbfx;Z)V
    .locals 2

    iget-object v0, p0, Lbfg;->a:Lbfn;

    iget-object v1, p1, Lbfx;->a:Ljava/util/Map;

    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lbfv;

    .line 11
    invoke-direct {p2, p1, v0}, Lbfv;-><init>(Lbfx;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    const-string p1, "Callback cannot be null."

    .line 12
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lbir;->b(ZLjava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 13
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p2}, Lbfv;->a()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_0
    monitor-exit p1

    return-void

    .line 15
    :catchall_0
    move-exception p2

    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbfg;->a:Lbfn;

    .line 2
    invoke-virtual {v0, p1}, Lbfn;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    const-string v0, "ApiCallRunner"

    const-string v1, "Exception reporting failure"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 5

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lbfg;->a:Lbfn;

    .line 6
    invoke-virtual {p1, v0}, Lbfn;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    const-string v0, "ApiCallRunner"

    const-string v1, "Exception reporting failure"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final c(Lbgf;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbfg;->a:Lbfn;

    iget-object p1, p1, Lbgf;->b:Lben;

    .line 8
    invoke-virtual {v0, p1}, Lbfn;->a(Lbem;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0, p1}, Lbfg;->a(Ljava/lang/Exception;)V

    return-void
.end method
