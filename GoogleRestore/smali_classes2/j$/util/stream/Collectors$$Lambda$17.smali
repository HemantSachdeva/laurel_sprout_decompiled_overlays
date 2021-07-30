.class final synthetic Lj$/util/stream/Collectors$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Function;


# static fields
.field static final $instance:Lj$/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/Collectors$$Lambda$17;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$Lambda$17;-><init>()V

    sput-object v0, Lj$/util/stream/Collectors$$Lambda$17;->$instance:Lj$/util/function/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lj$/util/StringJoiner;

    invoke-virtual {p1}, Lj$/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
