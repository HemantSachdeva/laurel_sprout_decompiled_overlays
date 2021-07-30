.class final synthetic Lj$/util/stream/DistinctOps$1$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/BiConsumer;


# static fields
.field static final $instance:Lj$/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/DistinctOps$1$$Lambda$2;

    invoke-direct {v0}, Lj$/util/stream/DistinctOps$1$$Lambda$2;-><init>()V

    sput-object v0, Lj$/util/stream/DistinctOps$1$$Lambda$2;->$instance:Lj$/util/function/BiConsumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/LinkedHashSet;

    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
