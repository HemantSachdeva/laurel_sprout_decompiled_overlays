.class final Lerl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Lery;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lero;


# direct methods
.method public constructor <init>(Lero;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)V
    .locals 1

    iput-object p1, p0, Lerl;->d:Lero;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lery;

    .line 1
    invoke-direct {v0, p2}, Lery;-><init>(Lorg/chromium/net/UrlRequest$Callback;)V

    iput-object v0, p0, Lerl;->a:Lery;

    iget-boolean p1, p1, Lero;->h:Z

    if-eqz p1, :cond_0

    iput-object p3, p0, Lerl;->b:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput-object p1, p0, Lerl;->c:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    new-instance p1, Lerr;

    .line 2
    invoke-direct {p1, p3}, Lerr;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lerl;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lerl;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    new-instance v0, Lerg;

    .line 7
    invoke-direct {v0, p0}, Lerg;-><init>(Lerl;)V

    invoke-virtual {p0, v0}, Lerl;->a(Lerp;)V

    return-void
.end method

.method final a(Lerp;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lerl;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lerl;->d:Lero;

    new-instance v2, Lerd;

    .line 3
    invoke-direct {v2, v1, p1}, Lerd;-><init>(Lero;Lerp;)V

    .line 4
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lerl;->d:Lero;

    new-instance v1, Leqa;

    .line 5
    const-string v2, "Exception posting task to executor"

    invoke-direct {v1, v2, p1}, Leqa;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {v0, v1}, Lero;->a(Lorg/chromium/net/CronetException;)V

    return-void
.end method
