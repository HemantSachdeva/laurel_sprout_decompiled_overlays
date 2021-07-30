.class final Lj$/util/stream/Nodes$CollectorTask$OfRef;
.super Lj$/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# direct methods
.method constructor <init>(Lj$/util/stream/PipelineHelper;Lj$/util/function/IntFunction;Lj$/util/Spliterator;)V
    .locals 1

    .line 2199
    new-instance v0, Lj$/util/stream/Nodes$CollectorTask$OfRef$$Lambda$0;

    invoke-direct {v0, p2}, Lj$/util/stream/Nodes$CollectorTask$OfRef$$Lambda$0;-><init>(Lj$/util/function/IntFunction;)V

    sget-object p2, Lj$/util/stream/Nodes$CollectorTask$OfRef$$Lambda$1;->$instance:Lj$/util/function/BinaryOperator;

    invoke-direct {p0, p1, p3, v0, p2}, Lj$/util/stream/Nodes$CollectorTask;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Lj$/util/function/LongFunction;Lj$/util/function/BinaryOperator;)V

    return-void
.end method

.method static final synthetic lambda$new$0$Nodes$CollectorTask$OfRef(Lj$/util/function/IntFunction;J)Lj$/util/stream/Node$Builder;
    .locals 0

    .line 2199
    invoke-static {p1, p2, p0}, Lj$/util/stream/Nodes;->builder(JLj$/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object p0

    return-object p0
.end method
