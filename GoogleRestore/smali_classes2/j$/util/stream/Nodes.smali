.class abstract Lj$/util/stream/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# static fields
.field private static final EMPTY_DOUBLE_ARRAY:[D

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_LONG_ARRAY:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1308
    sput-object v1, Lj$/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [J

    .line 1309
    sput-object v1, Lj$/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    new-array v0, v0, [D

    .line 1310
    sput-object v0, Lj$/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-void
.end method

.method static builder()Lj$/util/stream/Node$Builder;
    .locals 1

    .line 179
    new-instance v0, Lj$/util/stream/Nodes$SpinedNodeBuilder;

    invoke-direct {v0}, Lj$/util/stream/Nodes$SpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static builder(JLj$/util/function/IntFunction;)Lj$/util/stream/Node$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 168
    new-instance v0, Lj$/util/stream/Nodes$FixedNodeBuilder;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/Nodes$FixedNodeBuilder;-><init>(JLj$/util/function/IntFunction;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Lj$/util/stream/Nodes;->builder()Lj$/util/stream/Node$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static collect(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 5

    .line 320
    invoke-virtual {p0, p1}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/16 v2, 0x4000

    .line 321
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 324
    invoke-interface {p3, p2}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    .line 325
    new-instance p3, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;

    invoke-direct {p3, p1, p0, p2}, Lj$/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 326
    invoke-static {p2}, Lj$/util/stream/Nodes;->node([Ljava/lang/Object;)Lj$/util/stream/Node;

    move-result-object p0

    return-object p0

    .line 323
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 328
    :cond_1
    new-instance v0, Lj$/util/stream/Nodes$CollectorTask$OfRef;

    invoke-direct {v0, p0, p3, p1}, Lj$/util/stream/Nodes$CollectorTask$OfRef;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/function/IntFunction;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/Node;

    if-eqz p2, :cond_2

    .line 329
    invoke-static {p0, p3}, Lj$/util/stream/Nodes;->flatten(Lj$/util/stream/Node;Lj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static collectLong(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;Z)Lj$/util/stream/Node$OfLong;
    .locals 5

    .line 395
    invoke-virtual {p0, p1}, Lj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/16 v2, 0x4000

    .line 396
    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 399
    new-array p2, p2, [J

    .line 400
    new-instance v0, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;

    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Lj$/util/Spliterator;Lj$/util/stream/PipelineHelper;[J)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 401
    invoke-static {p2}, Lj$/util/stream/Nodes;->node([J)Lj$/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0

    .line 398
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 404
    :cond_1
    new-instance v0, Lj$/util/stream/Nodes$CollectorTask$OfLong;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Nodes$CollectorTask$OfLong;-><init>(Lj$/util/stream/PipelineHelper;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/Node$OfLong;

    if-eqz p2, :cond_2

    .line 405
    invoke-static {p0}, Lj$/util/stream/Nodes;->flattenLong(Lj$/util/stream/Node$OfLong;)Lj$/util/stream/Node$OfLong;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static flatten(Lj$/util/stream/Node;Lj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 5

    .line 465
    invoke-interface {p0}, Lj$/util/stream/Node;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 466
    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    .line 469
    invoke-interface {p1, v1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 470
    new-instance v0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Lj$/util/stream/Node;[Ljava/lang/Object;ILj$/util/stream/Nodes$1;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 471
    invoke-static {p1}, Lj$/util/stream/Nodes;->node([Ljava/lang/Object;)Lj$/util/stream/Node;

    move-result-object p0

    return-object p0

    .line 468
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static flattenLong(Lj$/util/stream/Node$OfLong;)Lj$/util/stream/Node$OfLong;
    .locals 5

    .line 517
    invoke-interface {p0}, Lj$/util/stream/Node;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 518
    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    .line 521
    new-array v0, v1, [J

    .line 522
    new-instance v1, Lj$/util/stream/Nodes$ToArrayTask$OfLong;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lj$/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Lj$/util/stream/Node$OfLong;[JILj$/util/stream/Nodes$1;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    .line 523
    invoke-static {v0}, Lj$/util/stream/Nodes;->node([J)Lj$/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0

    .line 520
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method static longBuilder()Lj$/util/stream/Node$Builder$OfLong;
    .locals 1

    .line 253
    new-instance v0, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;

    invoke-direct {v0}, Lj$/util/stream/Nodes$LongSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static longBuilder(J)Lj$/util/stream/Node$Builder$OfLong;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 243
    new-instance v0, Lj$/util/stream/Nodes$LongFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Nodes$LongFixedNodeBuilder;-><init>(J)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {}, Lj$/util/stream/Nodes;->longBuilder()Lj$/util/stream/Node$Builder$OfLong;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static node([J)Lj$/util/stream/Node$OfLong;
    .locals 1

    .line 230
    new-instance v0, Lj$/util/stream/Nodes$LongArrayNode;

    invoke-direct {v0, p0}, Lj$/util/stream/Nodes$LongArrayNode;-><init>([J)V

    return-object v0
.end method

.method static node(Ljava/util/Collection;)Lj$/util/stream/Node;
    .locals 1

    .line 153
    new-instance v0, Lj$/util/stream/Nodes$CollectionNode;

    invoke-direct {v0, p0}, Lj$/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static node([Ljava/lang/Object;)Lj$/util/stream/Node;
    .locals 1

    .line 140
    new-instance v0, Lj$/util/stream/Nodes$ArrayNode;

    invoke-direct {v0, p0}, Lj$/util/stream/Nodes$ArrayNode;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
