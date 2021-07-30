.class final Lcyu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lczu;

.field final synthetic b:Lcyx;


# direct methods
.method public constructor <init>(Lcyx;Lczu;)V
    .locals 0

    iput-object p1, p0, Lcyu;->b:Lcyx;

    iput-object p2, p0, Lcyu;->a:Lczu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcyu;->a:Lczu;

    .line 1
    invoke-interface {v0}, Lczu;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyu;->b:Lcyx;

    const/4 v1, 0x0

    iput-object v1, v0, Lcyx;->a:Lcsd;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcyr;->cancel(Z)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcyu;->b:Lcyx;

    iget-object v1, p0, Lcyu;->a:Lczu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {v1}, Ldab;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    move-exception v1

    .line 4
    :try_start_2
    invoke-virtual {v0, v1}, Lcyx;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyx;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2
    :goto_0
    iget-object v0, p0, Lcyu;->b:Lcyx;

    .line 6
    invoke-virtual {v0}, Lcyx;->h()V

    return-void

    .line 3
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcyu;->b:Lcyx;

    .line 6
    invoke-virtual {v1}, Lcyx;->h()V

    .line 7
    throw v0
.end method
