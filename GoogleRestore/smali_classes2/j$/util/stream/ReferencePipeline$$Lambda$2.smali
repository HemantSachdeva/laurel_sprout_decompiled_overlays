.class final synthetic Lj$/util/stream/ReferencePipeline$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/ToLongFunction;


# static fields
.field static final $instance:Lj$/util/function/ToLongFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/ReferencePipeline$$Lambda$2;

    invoke-direct {v0}, Lj$/util/stream/ReferencePipeline$$Lambda$2;-><init>()V

    sput-object v0, Lj$/util/stream/ReferencePipeline$$Lambda$2;->$instance:Lj$/util/function/ToLongFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsLong(Ljava/lang/Object;)J
    .locals 2

    invoke-static {p1}, Lj$/util/stream/ReferencePipeline;->lambda$count$2$ReferencePipeline(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
