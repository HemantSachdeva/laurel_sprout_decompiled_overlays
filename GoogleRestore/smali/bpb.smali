.class final Lbpb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbpi;

.field final synthetic b:Lbpc;


# direct methods
.method public constructor <init>(Lbpc;Lbpi;)V
    .locals 0

    iput-object p1, p0, Lbpb;->b:Lbpc;

    iput-object p2, p0, Lbpb;->a:Lbpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbpb;->b:Lbpc;

    iget-object v0, v0, Lbpc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbpb;->b:Lbpc;

    iget-object v1, v1, Lbpc;->b:Lbpd;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lbpb;->a:Lbpi;

    .line 1
    invoke-virtual {v2}, Lbpi;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lbpd;->a(Ljava/lang/Object;)V

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
