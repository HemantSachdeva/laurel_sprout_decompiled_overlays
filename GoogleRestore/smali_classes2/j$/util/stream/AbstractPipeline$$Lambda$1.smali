.class final synthetic Lj$/util/stream/AbstractPipeline$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field private final arg$1:Lj$/util/Spliterator;


# direct methods
.method constructor <init>(Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/AbstractPipeline$$Lambda$1;->arg$1:Lj$/util/Spliterator;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/AbstractPipeline$$Lambda$1;->arg$1:Lj$/util/Spliterator;

    invoke-static {v0}, Lj$/util/stream/AbstractPipeline;->lambda$wrapSpliterator$1$AbstractPipeline(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    return-object v0
.end method
