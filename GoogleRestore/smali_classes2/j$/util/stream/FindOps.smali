.class abstract Lj$/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# direct methods
.method public static makeRef(Z)Lj$/util/stream/TerminalOp;
    .locals 7

    .line 58
    new-instance v6, Lj$/util/stream/FindOps$FindOp;

    sget-object v2, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    sget-object v4, Lj$/util/stream/FindOps$$Lambda$0;->$instance:Lj$/util/function/Predicate;

    sget-object v5, Lj$/util/stream/FindOps$$Lambda$1;->$instance:Lj$/util/function/Supplier;

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/FindOps$FindOp;-><init>(ZLj$/util/stream/StreamShape;Ljava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    return-object v6
.end method
