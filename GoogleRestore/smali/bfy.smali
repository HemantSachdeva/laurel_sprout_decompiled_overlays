.class public final Lbfy;
.super Lbfq;
.source "PG"


# instance fields
.field public final e:Ltj;

.field private final g:Lbgj;


# direct methods
.method public constructor <init>(Lbgn;Lbgj;)V
    .locals 1

    .line 1
    sget-object v0, Lbdy;->a:Lbdy;

    .line 2
    invoke-direct {p0, p1, v0}, Lbfq;-><init>(Lbgn;Lbdy;)V

    .line 3
    new-instance p1, Ltj;

    invoke-direct {p1}, Ltj;-><init>()V

    iput-object p1, p0, Lbfy;->e:Ltj;

    iput-object p2, p0, Lbfy;->g:Lbgj;

    iget-object p1, p0, Lbfy;->f:Lbgn;

    check-cast p1, Lbgx;

    iget-object p2, p1, Lbgx;->b:Ljava/util/Map;

    .line 4
    const-string v0, "ConnectionlessLifecycleHelper"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lbgx;->b:Ljava/util/Map;

    .line 5
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p1, Lbgx;->c:I

    if-lez p2, :cond_0

    new-instance p2, Lblo;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Lblo;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lbgw;

    invoke-direct {v0, p1, p0}, Lbgw;-><init>(Lbgx;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    .line 7
    invoke-virtual {p2, v0}, Lblo;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 8
    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x58

    .line 8
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "LifecycleCallback with tag ConnectionlessLifecycleHelper already added to this fragment."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lbfy;->g:Lbgj;

    .line 10
    invoke-virtual {v0}, Lbgj;->b()V

    return-void
.end method

.method protected final a(Lbds;I)V
    .locals 1

    iget-object v0, p0, Lbfy;->g:Lbgj;

    .line 9
    invoke-virtual {v0, p1, p2}, Lbgj;->b(Lbds;I)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbfq;->a:Z

    .line 12
    invoke-virtual {p0}, Lbfy;->f()V

    return-void
.end method

.method public final d()V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lbfy;->f()V

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfq;->a:Z

    iget-object v0, p0, Lbfy;->g:Lbgj;

    sget-object v1, Lbgj;->f:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lbgj;->l:Lbfy;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lbgj;->l:Lbfy;

    iget-object v0, v0, Lbgj;->m:Ljava/util/Set;

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 15
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lbfy;->e:Ltj;

    .line 16
    invoke-virtual {v0}, Ltj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbfy;->g:Lbgj;

    .line 17
    invoke-virtual {v0, p0}, Lbgj;->a(Lbfy;)V

    :cond_0
    return-void
.end method
