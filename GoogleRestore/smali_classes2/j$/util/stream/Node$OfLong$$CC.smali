.class public abstract synthetic Lj$/util/stream/Node$OfLong$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static copyInto$$dflt$$(Lj$/util/stream/Node$OfLong;[Ljava/lang/Long;I)V
    .locals 4

    .line 418
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    .line 421
    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v0, 0x0

    .line 422
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 423
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.copyInto(Long[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static forEach$$dflt$$(Lj$/util/stream/Node$OfLong;Lj$/util/function/Consumer;)V
    .locals 1

    .line 398
    instance-of v0, p1, Lj$/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 399
    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 402
    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    .line 404
    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Lj$/util/Spliterator$OfLong;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Lj$/util/function/Consumer;)V

    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static newArray$$dflt$$(Lj$/util/stream/Node$OfLong;I)[J
    .locals 0

    .line 443
    new-array p0, p1, [J

    return-object p0
.end method
