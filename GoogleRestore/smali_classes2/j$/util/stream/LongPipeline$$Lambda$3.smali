.class final synthetic Lj$/util/stream/LongPipeline$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/LongBinaryOperator;


# static fields
.field static final $instance:Lj$/util/function/LongBinaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/LongPipeline$$Lambda$3;

    invoke-direct {v0}, Lj$/util/stream/LongPipeline$$Lambda$3;-><init>()V

    sput-object v0, Lj$/util/stream/LongPipeline$$Lambda$3;->$instance:Lj$/util/function/LongBinaryOperator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsLong(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lj$/lang/Long8;->sum(JJ)J

    move-result-wide p1

    return-wide p1
.end method
