.class final synthetic Ldfd;
.super Ljava/lang/Object;

# interfaces
.implements Lbox;


# instance fields
.field private final a:Ldfg;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ldfg;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfd;->a:Ldfg;

    iput-object p2, p0, Ldfd;->b:Ljava/lang/String;

    iput-object p3, p0, Ldfd;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)V
    .locals 3

    iget-object p1, p0, Ldfd;->a:Ldfg;

    iget-object v0, p0, Ldfd;->b:Ljava/lang/String;

    iget-object v1, p0, Ldfd;->c:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p1, Ldfg;->a:Lto;

    monitor-enter v2

    :try_start_0
    iget-object p1, p1, Ldfg;->a:Lto;

    invoke-virtual {p1, v0}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
