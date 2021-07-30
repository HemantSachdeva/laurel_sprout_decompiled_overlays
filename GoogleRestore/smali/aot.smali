.class final synthetic Laot;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/ToLongFunction;


# static fields
.field static final a:Lj$/util/function/ToLongFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laot;

    invoke-direct {v0}, Laot;-><init>()V

    sput-object v0, Laot;->a:Lj$/util/function/ToLongFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Laop;

    iget-wide v0, p1, Laop;->f:J

    return-wide v0
.end method
