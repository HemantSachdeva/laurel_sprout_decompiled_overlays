.class Lj$/util/stream/ReduceOps$4;
.super Lj$/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# instance fields
.field final synthetic val$accumulator:Lj$/util/function/BiConsumer;

.field final synthetic val$reducer:Lj$/util/function/BiConsumer;

.field final synthetic val$seedFactory:Lj$/util/function/Supplier;


# direct methods
.method constructor <init>(Lj$/util/stream/StreamShape;Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;Lj$/util/function/Supplier;)V
    .locals 0

    .line 228
    iput-object p2, p0, Lj$/util/stream/ReduceOps$4;->val$reducer:Lj$/util/function/BiConsumer;

    iput-object p3, p0, Lj$/util/stream/ReduceOps$4;->val$accumulator:Lj$/util/function/BiConsumer;

    iput-object p4, p0, Lj$/util/stream/ReduceOps$4;->val$seedFactory:Lj$/util/function/Supplier;

    invoke-direct {p0, p1}, Lj$/util/stream/ReduceOps$ReduceOp;-><init>(Lj$/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Lj$/util/stream/ReduceOps$4ReducingSink;
    .locals 4

    .line 231
    new-instance v0, Lj$/util/stream/ReduceOps$4ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$4;->val$seedFactory:Lj$/util/function/Supplier;

    iget-object v2, p0, Lj$/util/stream/ReduceOps$4;->val$accumulator:Lj$/util/function/BiConsumer;

    iget-object v3, p0, Lj$/util/stream/ReduceOps$4;->val$reducer:Lj$/util/function/BiConsumer;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/ReduceOps$4ReducingSink;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lj$/util/stream/ReduceOps$4;->makeSink()Lj$/util/stream/ReduceOps$4ReducingSink;

    move-result-object v0

    return-object v0
.end method
