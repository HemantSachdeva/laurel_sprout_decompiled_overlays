.class abstract Lj$/util/stream/Nodes$InternalNodeSpliterator;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Lj$/util/Spliterator;


# instance fields
.field curChildIndex:I

.field curNode:Lj$/util/stream/Node;

.field lastNodeSpliterator:Lj$/util/Spliterator;

.field tryAdvanceSpliterator:Lj$/util/Spliterator;

.field tryAdvanceStack:Ljava/util/Deque;


# direct methods
.method constructor <init>(Lj$/util/stream/Node;)V
    .locals 0

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput-object p1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public final estimateSize()J
    .locals 5

    .line 1038
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 1043
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-eqz v0, :cond_1

    .line 1044
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0

    .line 1047
    :cond_1
    iget v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    :goto_0
    iget-object v3, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v3}, Lj$/util/stream/Node;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1048
    iget-object v3, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v3, v0}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v3

    invoke-interface {v3}, Lj$/util/stream/Node;->count()J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method protected final findNextLeafNode(Ljava/util/Deque;)Lj$/util/stream/Node;
    .locals 6

    .line 976
    :cond_0
    invoke-interface {p1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node;

    if-eqz v0, :cond_2

    .line 977
    invoke-interface {v0}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 978
    invoke-interface {v0}, Lj$/util/stream/Node;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-object v0

    .line 981
    :cond_1
    invoke-interface {v0}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 982
    invoke-interface {v0, v1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$$CC;->getComparator$$dflt$$(Lj$/util/Spliterator;)Ljava/util/Comparator;

    const/4 v0, 0x0

    throw v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$$CC;->getExactSizeIfKnown$$dflt$$(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$$CC;->hasCharacteristics$$dflt$$(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method protected final initStack()Ljava/util/Deque;
    .locals 3

    .line 963
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 964
    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    if-lt v1, v2, :cond_0

    .line 965
    iget-object v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v2, v1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final initTryAdvance()Z
    .locals 2

    .line 991
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 994
    :cond_0
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    if-nez v0, :cond_3

    .line 995
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-nez v0, :cond_2

    .line 997
    invoke-virtual {p0}, Lj$/util/stream/Nodes$InternalNodeSpliterator;->initStack()Ljava/util/Deque;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceStack:Ljava/util/Deque;

    .line 998
    invoke-virtual {p0, v0}, Lj$/util/stream/Nodes$InternalNodeSpliterator;->findNextLeafNode(Ljava/util/Deque;)Lj$/util/stream/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1000
    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1004
    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    return v1

    .line 1009
    :cond_2
    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 3

    .line 1017
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->tryAdvanceSpliterator:Lj$/util/Spliterator;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    if-eqz v1, :cond_1

    .line 1020
    invoke-interface {v1}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1021
    :cond_1
    iget v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0}, Lj$/util/stream/Node;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    .line 1022
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    iget v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 1024
    :cond_2
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    iget v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v0, v1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    .line 1025
    invoke-interface {v0}, Lj$/util/stream/Node;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1026
    iget-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->lastNodeSpliterator:Lj$/util/Spliterator;

    .line 1027
    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 1030
    iput v0, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    .line 1031
    iget-object v1, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curNode:Lj$/util/stream/Node;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lj$/util/stream/Nodes$InternalNodeSpliterator;->curChildIndex:I

    invoke-interface {v1, v0}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
