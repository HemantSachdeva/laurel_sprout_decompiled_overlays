.class final Lbtl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczw;


# instance fields
.field public final a:Lbsz;

.field private final b:Lczw;


# direct methods
.method public constructor <init>(Lczw;Lbsz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lbtl;->b:Lczw;

    iput-object p2, p0, Lbtl;->a:Lbsz;

    return-void
.end method

.method private final a(Ljava/util/Collection;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 23
    invoke-direct {p0, v1}, Lbtl;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final b(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lbtj;

    .line 19
    invoke-direct {v0, p0, p1}, Lbtj;-><init>(Lbtl;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private final b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lbtk;

    .line 20
    invoke-direct {v0, p0, p1}, Lbtk;-><init>(Lbtl;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lczu;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 16
    invoke-direct {p0, p1}, Lbtl;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Lczw;->a(Ljava/lang/Runnable;)Lczu;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Runnable;Ljava/lang/Object;)Lczu;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 17
    invoke-direct {p0, p1}, Lbtl;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lczw;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lczu;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/Callable;)Lczu;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 18
    invoke-direct {p0, p1}, Lbtl;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-interface {v0, p1}, Lczw;->a(Ljava/util/concurrent/Callable;)Lczu;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lczy;
    .locals 7

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 12
    invoke-direct {p0, p1}, Lbtl;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lczw;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lczy;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 10
    invoke-direct {p0, p1}, Lbtl;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lczw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lczy;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 11
    invoke-direct {p0, p1}, Lbtl;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lczw;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    return-object p1
.end method

.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lczw;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lczy;
    .locals 7

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 13
    invoke-direct {p0, p1}, Lbtl;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lczw;->b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 3
    invoke-direct {p0, p1}, Lbtl;->b(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Lczw;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 4
    invoke-direct {p0, p1}, Lbtl;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lczw;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 5
    invoke-direct {p0, p1}, Lbtl;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lczw;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 6
    invoke-direct {p0, p1}, Lbtl;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lczw;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 7
    invoke-direct {p0, p1}, Lbtl;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lczw;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isShutdown()Z
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 8
    invoke-interface {v0}, Lczw;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 9
    invoke-interface {v0}, Lczw;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lbtl;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lbtl;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lbtl;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lbtl;->b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lczy;

    move-result-object p1

    return-object p1
.end method

.method public final shutdown()V
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 14
    invoke-interface {v0}, Lczw;->shutdown()V

    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbtl;->b:Lczw;

    .line 15
    invoke-interface {v0}, Lczw;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lbtl;->a(Ljava/lang/Runnable;)Lczu;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lbtl;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lczu;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Lbtl;->a(Ljava/util/concurrent/Callable;)Lczu;

    move-result-object p1

    return-object p1
.end method
