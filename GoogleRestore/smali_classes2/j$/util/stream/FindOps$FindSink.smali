.class abstract Lj$/util/stream/FindOps$FindSink;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Lj$/util/stream/TerminalSink;


# instance fields
.field hasValue:Z

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 1

    .line 178
    iget-boolean v0, p0, Lj$/util/stream/FindOps$FindSink;->hasValue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lj$/util/stream/FindOps$FindSink;->hasValue:Z

    .line 180
    iput-object p1, p0, Lj$/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Sink$$CC;->begin$$dflt$$(Lj$/util/stream/Sink;J)V

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lj$/util/stream/FindOps$FindSink;->hasValue:Z

    return v0
.end method

.method public end()V
    .locals 0

    invoke-static {p0}, Lj$/util/stream/Sink$$CC;->end$$dflt$$(Lj$/util/stream/Sink;)V

    return-void
.end method
