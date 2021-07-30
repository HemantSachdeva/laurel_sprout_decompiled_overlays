.class final enum Lcsp;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# static fields
.field public static final enum a:Lcsp;

.field private static final synthetic b:[Lcsp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcsp;

    .line 1
    invoke-direct {v0}, Lcsp;-><init>()V

    sput-object v0, Lcsp;->a:Lcsp;

    const/4 v1, 0x1

    new-array v1, v1, [Lcsp;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcsp;->b:[Lcsp;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcsp;
    .locals 1

    sget-object v0, Lcsp;->b:[Lcsp;

    .line 5
    invoke-virtual {v0}, [Lcsp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcsp;

    return-object v0
.end method


# virtual methods
.method public final forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$$CC;->forEachRemaining$$dflt$$(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 4
    const/4 v0, 0x0

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    return-void
.end method
