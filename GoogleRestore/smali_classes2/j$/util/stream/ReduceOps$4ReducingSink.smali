.class Lj$/util/stream/ReduceOps$4ReducingSink;
.super Lj$/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Lj$/util/stream/ReduceOps$AccumulatingSink;


# instance fields
.field final synthetic val$accumulator:Lj$/util/function/BiConsumer;

.field final synthetic val$reducer:Lj$/util/function/BiConsumer;

.field final synthetic val$seedFactory:Lj$/util/function/Supplier;


# direct methods
.method constructor <init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lj$/util/stream/ReduceOps$4ReducingSink;->val$seedFactory:Lj$/util/function/Supplier;

    iput-object p2, p0, Lj$/util/stream/ReduceOps$4ReducingSink;->val$accumulator:Lj$/util/function/BiConsumer;

    iput-object p3, p0, Lj$/util/stream/ReduceOps$4ReducingSink;->val$reducer:Lj$/util/function/BiConsumer;

    invoke-direct {p0}, Lj$/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$$CC;->accept$$dflt$$(Lj$/util/stream/Sink;J)V

    const/4 p1, 0x0

    throw p1
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lj$/util/stream/ReduceOps$4ReducingSink;->val$accumulator:Lj$/util/function/BiConsumer;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 215
    iget-object p1, p0, Lj$/util/stream/ReduceOps$4ReducingSink;->val$seedFactory:Lj$/util/function/Supplier;

    invoke-interface {p1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    invoke-static {p0}, Lj$/util/stream/Sink$$CC;->cancellationRequested$$dflt$$(Lj$/util/stream/Sink;)Z

    move-result v0

    return v0
.end method

.method public combine(Lj$/util/stream/ReduceOps$4ReducingSink;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lj$/util/stream/ReduceOps$4ReducingSink;->val$reducer:Lj$/util/function/BiConsumer;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    iget-object p1, p1, Lj$/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lj$/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 211
    check-cast p1, Lj$/util/stream/ReduceOps$4ReducingSink;

    invoke-virtual {p0, p1}, Lj$/util/stream/ReduceOps$4ReducingSink;->combine(Lj$/util/stream/ReduceOps$4ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    invoke-static {p0}, Lj$/util/stream/Sink$$CC;->end$$dflt$$(Lj$/util/stream/Sink;)V

    return-void
.end method
