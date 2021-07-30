.class final synthetic Lj$/util/stream/Collectors$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava/lang/CharSequence;

.field private final arg$2:Ljava/lang/CharSequence;

.field private final arg$3:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Collectors$$Lambda$14;->arg$1:Ljava/lang/CharSequence;

    iput-object p2, p0, Lj$/util/stream/Collectors$$Lambda$14;->arg$2:Ljava/lang/CharSequence;

    iput-object p3, p0, Lj$/util/stream/Collectors$$Lambda$14;->arg$3:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/Collectors$$Lambda$14;->arg$1:Ljava/lang/CharSequence;

    iget-object v1, p0, Lj$/util/stream/Collectors$$Lambda$14;->arg$2:Ljava/lang/CharSequence;

    iget-object v2, p0, Lj$/util/stream/Collectors$$Lambda$14;->arg$3:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lj$/util/stream/Collectors;->lambda$joining$6$Collectors(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    move-result-object v0

    return-object v0
.end method
