.class final Lbov;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbpi;

.field final synthetic b:Lbow;


# direct methods
.method public constructor <init>(Lbow;Lbpi;)V
    .locals 0

    iput-object p1, p0, Lbov;->b:Lbow;

    iput-object p2, p0, Lbov;->a:Lbpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbov;->b:Lbow;

    iget-object v0, v0, Lbow;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbov;->b:Lbow;

    iget-object v1, v1, Lbow;->b:Lbox;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lbov;->a:Lbpi;

    .line 1
    invoke-interface {v1, v2}, Lbox;->a(Lbpi;)V

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
