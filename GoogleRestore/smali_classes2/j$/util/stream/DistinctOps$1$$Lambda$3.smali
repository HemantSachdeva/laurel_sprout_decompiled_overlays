.class final synthetic Lj$/util/stream/DistinctOps$1$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field private final arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final arg$2:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/DistinctOps$1$$Lambda$3;->arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lj$/util/stream/DistinctOps$1$$Lambda$3;->arg$2:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DistinctOps$1$$Lambda$3;->arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lj$/util/stream/DistinctOps$1$$Lambda$3;->arg$2:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, p1}, Lj$/util/stream/DistinctOps$1;->lambda$opEvaluateParallel$0$DistinctOps$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-void
.end method
