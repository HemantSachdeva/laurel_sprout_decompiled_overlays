.class final Lbos;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbot;


# direct methods
.method public constructor <init>(Lbot;)V
    .locals 0

    iput-object p1, p0, Lbos;->a:Lbot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbos;->a:Lbot;

    iget-object v0, v0, Lbot;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbos;->a:Lbot;

    iget-object v1, v1, Lbot;->b:Lbou;

    if-eqz v1, :cond_0

    .line 1
    invoke-interface {v1}, Lbou;->a()V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
