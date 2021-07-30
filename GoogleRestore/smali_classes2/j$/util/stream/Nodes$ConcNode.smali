.class final Lj$/util/stream/Nodes$ConcNode;
.super Lj$/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node;


# direct methods
.method constructor <init>(Lj$/util/stream/Node;Lj$/util/stream/Node;)V
    .locals 0

    .line 783
    invoke-direct {p0, p1, p2}, Lj$/util/stream/Nodes$AbstractConcNode;-><init>(Lj$/util/stream/Node;Lj$/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public asArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 5

    .line 802
    invoke-virtual {p0}, Lj$/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    .line 805
    invoke-interface {p1, v1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 806
    invoke-virtual {p0, p1, v0}, Lj$/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    return-object p1

    .line 804
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 3

    .line 793
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 794
    iget-object v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->left:Lj$/util/stream/Node;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 797
    iget-object v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->right:Lj$/util/stream/Node;

    iget-object v1, p0, Lj$/util/stream/Nodes$AbstractConcNode;->left:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->count()J

    move-result-wide v1

    long-to-int v2, v1

    add-int/2addr p2, v2

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method public forEach(Lj$/util/function/Consumer;)V
    .locals 1

    .line 812
    iget-object v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->left:Lj$/util/stream/Node;

    invoke-interface {v0, p1}, Lj$/util/stream/Node;->forEach(Lj$/util/function/Consumer;)V

    .line 813
    iget-object v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->right:Lj$/util/stream/Node;

    invoke-interface {v0, p1}, Lj$/util/stream/Node;->forEach(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 788
    new-instance v0, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    invoke-direct {v0, p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Lj$/util/stream/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 833
    invoke-virtual {p0}, Lj$/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x20

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 834
    iget-object v1, p0, Lj$/util/stream/Nodes$AbstractConcNode;->left:Lj$/util/stream/Node;

    aput-object v1, v0, v2

    iget-object v1, p0, Lj$/util/stream/Nodes$AbstractConcNode;->right:Lj$/util/stream/Node;

    aput-object v1, v0, v3

    const-string v1, "ConcNode[%s.%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 836
    invoke-virtual {p0}, Lj$/util/stream/Nodes$AbstractConcNode;->count()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "ConcNode[size=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
