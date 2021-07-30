.class public abstract Lesf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lesb;
.implements Lesj;


# instance fields
.field public final a:[B

.field public b:I

.field public c:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lesf;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lesf;->b:I

    return-void
.end method

.method protected constructor <init>(Lesf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lesf;->a:[B

    .line 1
    invoke-virtual {p0, p1}, Lesf;->a(Lesf;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final a(B)V
    .locals 4

    iget-object v0, p0, Lesf;->a:[B

    iget v1, p0, Lesf;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lesf;->b:I

    .line 3
    aput-byte p1, v0, v1

    .line 4
    array-length p1, v0

    if-ne v2, p1, :cond_0

    .line 5
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lesf;->b([BI)V

    iput p1, p0, Lesf;->b:I

    :cond_0
    iget-wide v0, p0, Lesf;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lesf;->c:J

    return-void
.end method

.method protected final a(Lesf;)V
    .locals 4

    iget-object v0, p1, Lesf;->a:[B

    iget-object v1, p0, Lesf;->a:[B

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lesf;->b:I

    iput v0, p0, Lesf;->b:I

    iget-wide v0, p1, Lesf;->c:J

    iput-wide v0, p0, Lesf;->c:J

    return-void
.end method

.method public final a([BII)V
    .locals 5

    :goto_0
    iget v0, p0, Lesf;->b:I

    if-eqz v0, :cond_1

    if-lez p3, :cond_0

    .line 6
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lesf;->a(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 10
    :cond_1
    nop

    .line 6
    :goto_1
    iget-object v0, p0, Lesf;->a:[B

    .line 7
    array-length v0, v0

    if-le p3, v0, :cond_2

    .line 8
    invoke-virtual {p0, p1, p2}, Lesf;->b([BI)V

    iget-object v0, p0, Lesf;->a:[B

    .line 9
    array-length v0, v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-wide v1, p0, Lesf;->c:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lesf;->c:J

    goto :goto_1

    :cond_2
    nop

    :goto_2
    if-lez p3, :cond_3

    .line 10
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lesf;->a(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract b([BI)V
.end method
