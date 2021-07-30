.class public Lcsc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    invoke-static {v0, v1}, Lcrw;->a(ILjava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcsc;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcsc;->b:I

    return-void
.end method

.method static a(II)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    add-int/2addr p0, p0

    :cond_0
    if-gez p0, :cond_1

    const p0, 0x7fffffff

    :cond_1
    return p0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcsc;->a:[Ljava/lang/Object;

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 6
    invoke-static {v1, p1}, Lcsc;->a(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcsc;->a:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcsc;->c:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lcsc;->c:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcsc;->a:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcsc;->c:Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcsc;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcsc;->a(I)V

    iget-object v0, p0, Lcsc;->a:[Ljava/lang/Object;

    iget v1, p0, Lcsc;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcsc;->b:I

    .line 4
    aput-object p1, v0, v1

    return-void
.end method
