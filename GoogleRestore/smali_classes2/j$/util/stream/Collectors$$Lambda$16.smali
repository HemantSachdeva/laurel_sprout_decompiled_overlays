.class final synthetic Lj$/util/stream/Collectors$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/BinaryOperator;


# static fields
.field static final $instance:Lj$/util/function/BinaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/Collectors$$Lambda$16;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$Lambda$16;-><init>()V

    sput-object v0, Lj$/util/stream/Collectors$$Lambda$16;->$instance:Lj$/util/function/BinaryOperator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lj$/util/StringJoiner;

    check-cast p2, Lj$/util/StringJoiner;

    invoke-virtual {p1, p2}, Lj$/util/StringJoiner;->merge(Lj$/util/StringJoiner;)Lj$/util/StringJoiner;

    return-object p1
.end method
