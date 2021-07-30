.class final synthetic Lj$/util/stream/StreamSpliterators$DistinctSpliterator$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field private final arg$1:Lj$/util/stream/StreamSpliterators$DistinctSpliterator;

.field private final arg$2:Lj$/util/function/Consumer;


# direct methods
.method constructor <init>(Lj$/util/stream/StreamSpliterators$DistinctSpliterator;Lj$/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator$$Lambda$0;->arg$1:Lj$/util/stream/StreamSpliterators$DistinctSpliterator;

    iput-object p2, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator$$Lambda$0;->arg$2:Lj$/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator$$Lambda$0;->arg$1:Lj$/util/stream/StreamSpliterators$DistinctSpliterator;

    iget-object v1, p0, Lj$/util/stream/StreamSpliterators$DistinctSpliterator$$Lambda$0;->arg$2:Lj$/util/function/Consumer;

    invoke-virtual {v0, v1, p1}, Lj$/util/stream/StreamSpliterators$DistinctSpliterator;->lambda$forEachRemaining$0$StreamSpliterators$DistinctSpliterator(Lj$/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
