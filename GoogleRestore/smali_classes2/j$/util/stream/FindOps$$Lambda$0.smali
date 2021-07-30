.class final synthetic Lj$/util/stream/FindOps$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Predicate;


# static fields
.field static final $instance:Lj$/util/function/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/FindOps$$Lambda$0;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$Lambda$0;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$Lambda$0;->$instance:Lj$/util/function/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lj$/util/Optional;

    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    return p1
.end method
