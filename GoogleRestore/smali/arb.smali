.class final synthetic Larb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Larf;

.field private final b:Lare;


# direct methods
.method public constructor <init>(Larf;Lare;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larb;->a:Larf;

    iput-object p2, p0, Larb;->b:Lare;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Larb;->a:Larf;

    iget-object v1, p0, Larb;->b:Lare;

    iget-object v2, v0, Larf;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Larf;->e:Ljava/util/Set;

    iget-object v1, v1, Lare;->a:Laqw;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
