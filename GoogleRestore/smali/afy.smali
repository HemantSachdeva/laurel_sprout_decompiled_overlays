.class abstract Lafy;
.super Lv;
.source "PG"


# instance fields
.field final j:Lacw;

.field private final k:Ljava/util/concurrent/ExecutorService;

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lv;-><init>()V

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lafy;->j:Lacw;

    .line 3
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lafy;->k:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lafy;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafy;->l:Z

    iget-object v0, p0, Lafy;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lafx;

    .line 4
    invoke-direct {v1, p0}, Lafx;-><init>(Lafy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract e()Ljava/lang/Object;
.end method
