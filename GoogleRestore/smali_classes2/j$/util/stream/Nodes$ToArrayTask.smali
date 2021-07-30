.class abstract Lj$/util/stream/Nodes$ToArrayTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "Nodes.java"


# instance fields
.field protected final node:Lj$/util/stream/Node;

.field protected final offset:I


# direct methods
.method constructor <init>(Lj$/util/stream/Node;I)V
    .locals 0

    .line 2031
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    .line 2032
    iput-object p1, p0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    .line 2033
    iput p2, p0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    return-void
.end method

.method constructor <init>(Lj$/util/stream/Nodes$ToArrayTask;Lj$/util/stream/Node;I)V
    .locals 0

    .line 2037
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 2038
    iput-object p2, p0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    .line 2039
    iput p3, p0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    return-void
.end method


# virtual methods
.method public compute()V
    .locals 8

    move-object v0, p0

    .line 2050
    :goto_0
    iget-object v1, v0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2051
    invoke-virtual {v0}, Lj$/util/stream/Nodes$ToArrayTask;->copyNodeToArray()V

    .line 2052
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    return-void

    .line 2056
    :cond_0
    iget-object v1, v0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    invoke-interface {v1}, Lj$/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2060
    :goto_1
    iget-object v3, v0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    invoke-interface {v3}, Lj$/util/stream/Node;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 2061
    iget v3, v0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lj$/util/stream/Nodes$ToArrayTask;->makeChild(II)Lj$/util/stream/Nodes$ToArrayTask;

    move-result-object v3

    int-to-long v4, v2

    .line 2062
    iget-object v2, v3, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    invoke-interface {v2}, Lj$/util/stream/Node;->count()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 2063
    invoke-virtual {v3}, Ljava/util/concurrent/CountedCompleter;->fork()Ljava/util/concurrent/ForkJoinTask;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2065
    :cond_1
    iget v3, v0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lj$/util/stream/Nodes$ToArrayTask;->makeChild(II)Lj$/util/stream/Nodes$ToArrayTask;

    move-result-object v0

    goto :goto_0
.end method

.method abstract copyNodeToArray()V
.end method

.method abstract makeChild(II)Lj$/util/stream/Nodes$ToArrayTask;
.end method
