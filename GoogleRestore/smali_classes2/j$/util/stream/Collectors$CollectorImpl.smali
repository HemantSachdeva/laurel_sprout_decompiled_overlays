.class Lj$/util/stream/Collectors$CollectorImpl;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lj$/util/stream/Collector;


# instance fields
.field private final accumulator:Lj$/util/function/BiConsumer;

.field private final characteristics:Ljava/util/Set;

.field private final combiner:Lj$/util/function/BinaryOperator;

.field private final finisher:Lj$/util/function/Function;

.field private final supplier:Lj$/util/function/Supplier;


# direct methods
.method constructor <init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;Lj$/util/function/Function;Ljava/util/Set;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lj$/util/stream/Collectors$CollectorImpl;->supplier:Lj$/util/function/Supplier;

    .line 160
    iput-object p2, p0, Lj$/util/stream/Collectors$CollectorImpl;->accumulator:Lj$/util/function/BiConsumer;

    .line 161
    iput-object p3, p0, Lj$/util/stream/Collectors$CollectorImpl;->combiner:Lj$/util/function/BinaryOperator;

    .line 162
    iput-object p4, p0, Lj$/util/stream/Collectors$CollectorImpl;->finisher:Lj$/util/function/Function;

    .line 163
    iput-object p5, p0, Lj$/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accumulator()Lj$/util/function/BiConsumer;
    .locals 1

    .line 175
    iget-object v0, p0, Lj$/util/stream/Collectors$CollectorImpl;->accumulator:Lj$/util/function/BiConsumer;

    return-object v0
.end method

.method public characteristics()Ljava/util/Set;
    .locals 1

    .line 195
    iget-object v0, p0, Lj$/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    return-object v0
.end method

.method public combiner()Lj$/util/function/BinaryOperator;
    .locals 1

    .line 185
    iget-object v0, p0, Lj$/util/stream/Collectors$CollectorImpl;->combiner:Lj$/util/function/BinaryOperator;

    return-object v0
.end method

.method public finisher()Lj$/util/function/Function;
    .locals 1

    .line 190
    iget-object v0, p0, Lj$/util/stream/Collectors$CollectorImpl;->finisher:Lj$/util/function/Function;

    return-object v0
.end method

.method public supplier()Lj$/util/function/Supplier;
    .locals 1

    .line 180
    iget-object v0, p0, Lj$/util/stream/Collectors$CollectorImpl;->supplier:Lj$/util/function/Supplier;

    return-object v0
.end method
