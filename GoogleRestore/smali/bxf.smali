.class public final Lbxf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbvt;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lbqy;

.field private final b:Ljava/util/Map;

.field private final c:Lbqp;

.field private final d:Lcbh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbvr;Landroid/app/Application;Lczw;Leip;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbxf;->b:Ljava/util/Map;

    new-instance v0, Lbxj;

    .line 2
    invoke-direct {v0, p4}, Lbxj;-><init>(Leip;)V

    .line 3
    invoke-static {v0}, Lcbh;->a(Leip;)Lcbh;

    move-result-object p4

    iput-object p4, p0, Lbxf;->d:Lcbh;

    .line 4
    invoke-virtual {p1, p3, p4}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    .line 5
    invoke-static {p2}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object p1

    iput-object p1, p0, Lbxf;->a:Lbqy;

    new-instance p3, Lbxk;

    .line 6
    invoke-direct {p3, p0}, Lbxk;-><init>(Lbxf;)V

    iput-object p3, p0, Lbxf;->c:Lbqp;

    .line 7
    invoke-virtual {p1, p3}, Lbqy;->a(Lbqx;)V

    new-instance p1, Lbxl;

    .line 8
    invoke-direct {p1, p2}, Lbxl;-><init>(Landroid/app/Application;)V

    .line 9
    invoke-static {p1}, Lcrq;->a(Lcrm;)Lcrm;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbxf;->b:Ljava/util/Map;

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbxf;->b:Ljava/util/Map;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxe;

    .line 12
    invoke-virtual {v1}, Lbxe;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbxf;->b:Ljava/util/Map;

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lbxf;->a:Lbqy;

    iget-object v1, p0, Lbxf;->c:Lbqp;

    .line 14
    invoke-virtual {v0, v1}, Lbqy;->b(Lbqx;)V

    .line 15
    invoke-virtual {p0}, Lbxf;->a()V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
