.class final Lbwy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbxa;


# static fields
.field private static final a:[I


# instance fields
.field private final b:[I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbwy;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
        0xa
        0xc
        0xe
        0x10
        0x12
        0x14
        0x19
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
        0x96
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbwy;->a:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lbwy;->b:[I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcrj;->a(Z)V

    iget v1, p0, Lbwy;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lbwy;->d:I

    if-le p1, p2, :cond_1

    iget p2, p0, Lbwy;->c:I

    add-int/2addr p2, v0

    iput p2, p0, Lbwy;->c:I

    :cond_1
    iget-object p2, p0, Lbwy;->b:[I

    sget-object v1, Lbwy;->a:[I

    .line 2
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    .line 3
    :cond_2
    aget v2, p2, v1

    add-int/2addr v2, v0

    aput v2, p2, v1

    iget p2, p0, Lbwy;->e:I

    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lbwy;->e:I

    iget p2, p0, Lbwy;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lbwy;->f:I

    return-void
.end method

.method public final a()Z
    .locals 1

    iget v0, p0, Lbwy;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Leom;
    .locals 13

    invoke-virtual {p0}, Lbwy;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    sget-object v0, Leom;->h:Leom;

    .line 6
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget v2, p0, Lbwy;->c:I

    iget-boolean v3, v0, Ldjy;->b:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_1
    iget-object v3, v0, Ldjy;->a:Ldkd;

    .line 8
    check-cast v3, Leom;

    iget v5, v3, Leom;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v3, Leom;->a:I

    iput v2, v3, Leom;->b:I

    iget v2, p0, Lbwy;->d:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Leom;->a:I

    iput v2, v3, Leom;->c:I

    iget v2, p0, Lbwy;->f:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v3, Leom;->a:I

    iput v2, v3, Leom;->e:I

    iget v2, p0, Lbwy;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Leom;->a:I

    iput v2, v3, Leom;->d:I

    iget-object v2, p0, Lbwy;->b:[I

    new-instance v3, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    sget-object v7, Lbwy;->a:[I

    array-length v8, v7

    if-ge v5, v8, :cond_8

    .line 10
    aget v8, v2, v5

    if-lez v8, :cond_7

    add-int/lit8 v8, v5, 0x1

    .line 11
    aget v9, v2, v5

    aget v10, v7, v5

    array-length v11, v7

    if-ne v8, v11, :cond_2

    move-object v7, v1

    goto :goto_1

    .line 12
    :cond_2
    aget v7, v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 11
    :goto_1
    if-lez v9, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 13
    :goto_2
    invoke-static {v8}, Lcrj;->a(Z)V

    .line 14
    sget-object v8, Leol;->e:Leol;

    .line 15
    invoke-virtual {v8}, Ldkd;->g()Ldjy;

    move-result-object v8

    iget-boolean v11, v8, Ldjy;->b:Z

    if-eqz v11, :cond_4

    .line 16
    invoke-virtual {v8}, Ldjy;->b()V

    iput-boolean v4, v8, Ldjy;->b:Z

    :cond_4
    iget-object v11, v8, Ldjy;->a:Ldkd;

    .line 17
    check-cast v11, Leol;

    iget v12, v11, Leol;->a:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v11, Leol;->a:I

    iput v10, v11, Leol;->c:I

    or-int/lit8 v10, v12, 0x1

    iput v10, v11, Leol;->a:I

    iput v9, v11, Leol;->b:I

    if-eqz v7, :cond_6

    .line 18
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v9, v8, Ldjy;->b:Z

    if-eqz v9, :cond_5

    .line 19
    invoke-virtual {v8}, Ldjy;->b()V

    iput-boolean v4, v8, Ldjy;->b:Z

    :cond_5
    iget-object v9, v8, Ldjy;->a:Ldkd;

    .line 20
    check-cast v9, Leol;

    iget v10, v9, Leol;->a:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v9, Leol;->a:I

    iput v7, v9, Leol;->d:I

    .line 21
    :cond_6
    invoke-virtual {v8}, Ldjy;->f()Ldkd;

    move-result-object v7

    check-cast v7, Leol;

    .line 11
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_8
    new-array v1, v4, [Leol;

    .line 22
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Leol;

    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-boolean v2, v0, Ldjy;->b:Z

    if-eqz v2, :cond_9

    .line 24
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_9
    iget-object v2, v0, Ldjy;->a:Ldkd;

    .line 25
    check-cast v2, Leom;

    iget-object v3, v2, Leom;->f:Ldkk;

    .line 26
    invoke-interface {v3}, Ldkk;->a()Z

    move-result v4

    if-nez v4, :cond_a

    .line 27
    invoke-static {v3}, Ldkd;->a(Ldkk;)Ldkk;

    move-result-object v3

    iput-object v3, v2, Leom;->f:Ldkk;

    :cond_a
    iget-object v2, v2, Leom;->f:Ldkk;

    .line 28
    invoke-static {v1, v2}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 29
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Leom;

    return-object v0
.end method
