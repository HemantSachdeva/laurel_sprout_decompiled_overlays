.class Lj$/util/stream/Nodes$LongArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Lj$/util/stream/Node$OfLong;


# instance fields
.field final array:[J

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 3

    .line 1372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    long-to-int p2, p1

    .line 1375
    new-array p1, p2, [J

    iput-object p1, p0, Lj$/util/stream/Nodes$LongArrayNode;->array:[J

    const/4 p1, 0x0

    .line 1376
    iput p1, p0, Lj$/util/stream/Nodes$LongArrayNode;->curSize:I

    return-void

    .line 1374
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream size exceeds max array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([J)V
    .locals 0

    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    iput-object p1, p0, Lj$/util/stream/Nodes$LongArrayNode;->array:[J

    .line 1381
    array-length p1, p1

    iput p1, p0, Lj$/util/stream/Nodes$LongArrayNode;->curSize:I

    return-void
.end method


# virtual methods
.method public asArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfPrimitive$$CC;->asArray$$dflt$$(Lj$/util/stream/Node$OfPrimitive;Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1368
    invoke-virtual {p0}, Lj$/util/stream/Nodes$LongArrayNode;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[J
    .locals 3

    .line 1391
    iget-object v0, p0, Lj$/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v0

    iget v2, p0, Lj$/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ne v1, v2, :cond_0

    return-object v0

    .line 1394
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1368
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Nodes$LongArrayNode;->copyInto([JI)V

    return-void
.end method

.method public copyInto([JI)V
    .locals 3

    .line 1400
    iget-object v0, p0, Lj$/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Lj$/util/stream/Nodes$LongArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyInto([Ljava/lang/Long;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$OfLong$$CC;->copyInto$$dflt$$(Lj$/util/stream/Node$OfLong;[Ljava/lang/Long;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Long;

    invoke-interface {p0, p1, p2}, Lj$/util/stream/Node$OfLong;->copyInto([Ljava/lang/Long;I)V

    return-void
.end method

.method public count()J
    .locals 2

    .line 1405
    iget v0, p0, Lj$/util/stream/Nodes$LongArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEach(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfLong$$CC;->forEach$$dflt$$(Lj$/util/stream/Node$OfLong;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public forEach(Lj$/util/function/LongConsumer;)V
    .locals 4

    const/4 v0, 0x0

    .line 1410
    :goto_0
    iget v1, p0, Lj$/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    .line 1411
    iget-object v1, p0, Lj$/util/stream/Nodes$LongArrayNode;->array:[J

    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Lj$/util/function/LongConsumer;->accept(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1368
    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$LongArrayNode;->forEach(Lj$/util/function/LongConsumer;)V

    return-void
.end method

.method public getChild(I)Lj$/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfPrimitive$$CC;->getChild$$dflt$$(Lj$/util/stream/Node$OfPrimitive;I)Lj$/util/stream/Node$OfPrimitive;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic getChild(I)Lj$/util/stream/Node;
    .locals 0

    invoke-interface {p0, p1}, Lj$/util/stream/Node$OfPrimitive;->getChild(I)Lj$/util/stream/Node$OfPrimitive;

    const/4 p1, 0x0

    throw p1
.end method

.method public getChildCount()I
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Node$$CC;->getChildCount$$dflt$$(Lj$/util/stream/Node;)I

    move-result v0

    return v0
.end method

.method public newArray(I)[J
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$OfLong$$CC;->newArray$$dflt$$(Lj$/util/stream/Node$OfLong;I)[J

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Lj$/util/Spliterator$OfLong;
    .locals 3

    .line 1386
    iget-object v0, p0, Lj$/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Lj$/util/stream/Nodes$LongArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lj$/util/DesugarArrays;->spliterator([JII)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1368
    invoke-virtual {p0}, Lj$/util/stream/Nodes$LongArrayNode;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1368
    invoke-virtual {p0}, Lj$/util/stream/Nodes$LongArrayNode;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1417
    iget-object v1, p0, Lj$/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v1, v1

    iget v2, p0, Lj$/util/stream/Nodes$LongArrayNode;->curSize:I

    sub-int/2addr v1, v2

    .line 1418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lj$/util/stream/Nodes$LongArrayNode;->array:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "LongArrayNode[%d][%s]"

    .line 1417
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
