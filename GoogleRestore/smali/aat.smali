.class final Laat;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Labj;

.field final synthetic b:Laav;


# direct methods
.method public constructor <init>(Laav;Labj;)V
    .locals 0

    iput-object p1, p0, Laat;->b:Laav;

    iput-object p2, p0, Laat;->a:Labj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laat;->b:Laav;

    iget-object v0, v0, Laav;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Laat;->a:Labj;

    .line 1
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
