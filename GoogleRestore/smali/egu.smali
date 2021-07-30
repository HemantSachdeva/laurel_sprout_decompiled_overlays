.class final Legu;
.super Leaa;
.source "PG"


# instance fields
.field a:I

.field final b:I

.field final c:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    invoke-direct {p0}, Leaa;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    const-string v3, "offset must be >= 0"

    invoke-static {v2, v3}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 2
    const-string v2, "length must be >= 0"

    invoke-static {v1, v2}, Lcrj;->a(ZLjava/lang/Object;)V

    add-int/2addr p3, p2

    array-length v2, p1

    if-gt p3, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 4
    :cond_1
    nop

    .line 2
    :goto_1
    nop

    .line 3
    const-string v1, "offset + length exceeds array boundary"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 4
    check-cast p1, [B

    iput-object p1, p0, Legu;->c:[B

    iput p2, p0, Legu;->a:I

    iput p3, p0, Legu;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Legu;->b:I

    iget v1, p0, Legu;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a([BII)V
    .locals 2

    iget-object v0, p0, Legu;->c:[B

    iget v1, p0, Legu;->a:I

    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Legu;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Legu;->a:I

    return-void
.end method

.method public final b()I
    .locals 3

    .line 6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leaa;->a(I)V

    iget-object v0, p0, Legu;->c:[B

    iget v1, p0, Legu;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Legu;->a:I

    .line 7
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final bridge synthetic c(I)Legs;
    .locals 3

    invoke-virtual {p0, p1}, Leaa;->a(I)V

    iget v0, p0, Legu;->a:I

    add-int v1, v0, p1

    iput v1, p0, Legu;->a:I

    new-instance v1, Legu;

    iget-object v2, p0, Legu;->c:[B

    invoke-direct {v1, v2, v0, p1}, Legu;-><init>([BII)V

    return-object v1
.end method
