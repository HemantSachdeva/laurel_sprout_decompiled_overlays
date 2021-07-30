.class final Lboy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbpi;

.field final synthetic b:Lboz;


# direct methods
.method public constructor <init>(Lboz;Lbpi;)V
    .locals 0

    iput-object p1, p0, Lboy;->b:Lboz;

    iput-object p2, p0, Lboy;->a:Lbpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lboy;->b:Lboz;

    iget-object v0, v0, Lboz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lboy;->b:Lboz;

    iget-object v1, v1, Lboz;->b:Lbpa;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lboy;->a:Lbpi;

    .line 1
    invoke-virtual {v2}, Lbpi;->e()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lbir;->a(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lbpa;->a(Ljava/lang/Exception;)V

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
