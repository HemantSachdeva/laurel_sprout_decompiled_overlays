.class Lj$/util/stream/ReferencePipeline$Head;
.super Lj$/util/stream/ReferencePipeline;
.source "ReferencePipeline.java"


# direct methods
.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 0

    .line 562
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/ReferencePipeline;-><init>(Lj$/util/Spliterator;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Lj$/util/function/Consumer;)V
    .locals 1

    .line 579
    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->sourceStageSpliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    goto :goto_0

    .line 583
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/ReferencePipeline;->forEach(Lj$/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method final opIsStateful()Z
    .locals 1

    .line 567
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 0

    .line 572
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
