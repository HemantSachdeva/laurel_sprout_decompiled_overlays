.class final Lbpe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbpi;

.field final synthetic b:Lbpf;


# direct methods
.method public constructor <init>(Lbpf;Lbpi;)V
    .locals 0

    iput-object p1, p0, Lbpe;->b:Lbpf;

    iput-object p2, p0, Lbpe;->a:Lbpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbpe;->b:Lbpf;

    iget-object v0, v0, Lbpf;->a:Lbph;

    iget-object v1, p0, Lbpe;->a:Lbpi;

    .line 1
    invoke-virtual {v1}, Lbpi;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lbph;->a(Ljava/lang/Object;)Lbpi;

    move-result-object v0
    :try_end_0
    .catch Lbpg; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbpe;->b:Lbpf;

    new-instance v1, Ljava/lang/NullPointerException;

    .line 7
    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbpf;->a(Ljava/lang/Exception;)V

    return-void

    .line 8
    :cond_0
    sget-object v1, Lbpo;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lbpe;->b:Lbpf;

    invoke-virtual {v0, v1, v2}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbpd;)V

    sget-object v1, Lbpo;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lbpe;->b:Lbpf;

    .line 9
    invoke-virtual {v0, v1, v2}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbpa;)V

    sget-object v1, Lbpo;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lbpe;->b:Lbpf;

    .line 10
    invoke-virtual {v0, v1, v2}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbou;)V

    return-void

    .line 3
    :catch_0
    move-exception v0

    iget-object v1, p0, Lbpe;->b:Lbpf;

    .line 2
    invoke-virtual {v1, v0}, Lbpf;->a(Ljava/lang/Exception;)V

    return-void

    .line 5
    :catch_1
    move-exception v0

    iget-object v0, p0, Lbpe;->b:Lbpf;

    .line 3
    invoke-virtual {v0}, Lbpf;->a()V

    return-void

    .line 10
    :catch_2
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lbpg;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbpe;->b:Lbpf;

    .line 5
    invoke-virtual {v0}, Lbpg;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lbpf;->a(Ljava/lang/Exception;)V

    return-void

    .line 2
    :cond_1
    iget-object v1, p0, Lbpe;->b:Lbpf;

    .line 6
    invoke-virtual {v1, v0}, Lbpf;->a(Ljava/lang/Exception;)V

    return-void
.end method
