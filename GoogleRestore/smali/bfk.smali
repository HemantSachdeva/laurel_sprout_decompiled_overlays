.class public final Lbfk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbeo;

.field private final b:I


# direct methods
.method private constructor <init>(Lbeo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfk;->a:Lbeo;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lbfk;->b:I

    return-void
.end method

.method public static a(Lbeo;)Lbfk;
    .locals 1

    new-instance v0, Lbfk;

    .line 6
    invoke-direct {v0, p0}, Lbfk;-><init>(Lbeo;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 2
    :cond_1
    instance-of v2, p1, Lbfk;

    if-nez v2, :cond_2

    return v0

    .line 3
    :cond_2
    check-cast p1, Lbfk;

    iget-object v2, p0, Lbfk;->a:Lbeo;

    iget-object p1, p1, Lbfk;->a:Lbeo;

    .line 4
    invoke-static {v2, p1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    const/4 p1, 0x0

    invoke-static {p1, p1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lbfk;->b:I

    return v0
.end method
