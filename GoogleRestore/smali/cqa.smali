.class public Lcqa;
.super Lcpv;
.source "PG"


# static fields
.field private static final serialVersionUID:J = 0x3f3d7d7ae9a55157L


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/Map;

.field private c:Lcpw;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcqa;-><init>(Lcpw;)V

    return-void
.end method

.method public constructor <init>(Lcpw;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcpv;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcqa;->a:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcqa;->c:Lcpw;

    iget-object p1, p1, Lcpw;->a:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bearer "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    const-string v0, "Authorization"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcqa;->b:Ljava/util/Map;

    return-void

    .line 2
    :cond_1
    return-void
.end method

.method private final b()Z
    .locals 7

    iget-object v0, p0, Lcqa;->c:Lcpw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v0, Lcpw;->b:Ljava/lang/Long;

    new-instance v1, Ljava/util/Date;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 25
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 0
    :goto_0
    iget-object v1, p0, Lcqa;->b:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v4, 0x493e0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 23
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lcqa;->a:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcqa;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    iget-object v1, p0, Lcqa;->b:Ljava/util/Map;

    const-string v2, "requestMetadata"

    .line 13
    invoke-static {v1, v2}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 9
    :cond_0
    iget-object v1, p0, Lcqa;->a:Ljava/lang/Object;

    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcqa;->b:Ljava/util/Map;

    iput-object v2, p0, Lcqa;->c:Lcpw;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "OAuth2Credentials instance does not support refreshing the access token. An instance with a new access token should be used, or a derived type that supports refreshing."

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 14
    :catchall_0
    move-exception v2

    .line 12
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 13
    :catchall_1
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final a(Ljava/util/concurrent/Executor;Ldzd;)V
    .locals 2

    iget-object v0, p0, Lcqa;->a:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-direct {p0}, Lcqa;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcpu;

    .line 17
    invoke-direct {v1, p0, p2}, Lcpu;-><init>(Lcpv;Ldzd;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    monitor-exit v0

    return-void

    :cond_0
    iget-object p1, p0, Lcqa;->b:Ljava/util/Map;

    const-string v1, "cached requestMetadata"

    .line 19
    invoke-static {p1, v1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p2, p1}, Ldzd;->a(Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 4
    instance-of v0, p1, Lcqa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    check-cast p1, Lcqa;

    iget-object v0, p0, Lcqa;->b:Ljava/util/Map;

    .line 6
    iget-object v2, p1, Lcqa;->b:Ljava/util/Map;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcqa;->c:Lcpw;

    iget-object p1, p1, Lcqa;->c:Lcpw;

    .line 7
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcqa;->b:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcqa;->c:Lcpw;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 22
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 28
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Lcqa;->b:Ljava/util/Map;

    .line 29
    const-string v2, "requestMetadata"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcqa;->c:Lcpw;

    .line 30
    const-string v2, "temporaryAccess"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
