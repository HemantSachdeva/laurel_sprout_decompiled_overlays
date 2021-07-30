.class public final Lmi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field final d:Lqb;

.field private final e:Lfi;


# direct methods
.method public constructor <init>(Lqb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfi;

    .line 1
    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lfi;-><init>(I)V

    iput-object v0, p0, Lmi;->e:Lfi;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmi;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmi;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lmi;->c:I

    iput-object p1, p0, Lmi;->d:Lqb;

    return-void
.end method

.method private final b(II)I
    .locals 6

    iget-object v0, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmh;

    .line 107
    iget v2, v1, Lmh;->a:I

    .line 108
    iget v3, v1, Lmh;->b:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gt v3, p1, :cond_1

    if-ne v2, v5, :cond_0

    .line 109
    iget v1, v1, Lmh;->d:I

    sub-int/2addr p1, v1

    goto :goto_2

    :cond_0
    if-ne v2, v4, :cond_3

    .line 110
    iget v1, v1, Lmh;->d:I

    add-int/2addr p1, v1

    goto :goto_2

    :cond_1
    if-ne p2, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :goto_1
    iput v3, v1, Lmh;->b:I

    goto :goto_2

    :cond_2
    if-ne p2, v4, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 109
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 110
    :cond_4
    iget-object p2, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-ltz p2, :cond_6

    iget-object v0, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmh;

    .line 113
    iget v1, v0, Lmh;->a:I

    .line 114
    iget v1, v0, Lmh;->d:I

    if-gtz v1, :cond_5

    iget-object v1, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, v0}, Lmi;->a(Lmh;)V

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_6
    return p1
.end method

.method private final b(Lmh;)V
    .locals 12

    .line 24
    iget v0, p1, Lmh;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 26
    iget v2, p1, Lmh;->b:I

    invoke-direct {p0, v2, v0}, Lmi;->b(II)I

    move-result v0

    .line 27
    iget v2, p1, Lmh;->b:I

    .line 28
    iget v3, p1, Lmh;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eq v3, v4, :cond_1

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 28
    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 29
    :goto_1
    iget v9, p1, Lmh;->d:I

    if-ge v7, v9, :cond_7

    .line 30
    iget v9, p1, Lmh;->b:I

    mul-int v10, v3, v7

    add-int/2addr v9, v10

    .line 31
    iget v10, p1, Lmh;->a:I

    invoke-direct {p0, v9, v10}, Lmi;->b(II)I

    move-result v9

    .line 32
    iget v10, p1, Lmh;->a:I

    if-eq v10, v4, :cond_3

    if-eq v10, v6, :cond_2

    goto :goto_4

    .line 36
    :cond_2
    add-int/lit8 v11, v0, 0x1

    if-ne v9, v11, :cond_4

    goto :goto_2

    :cond_3
    if-ne v9, v0, :cond_4

    :goto_2
    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 33
    :cond_5
    :goto_4
    iget-object v11, p1, Lmh;->c:Ljava/lang/Object;

    invoke-virtual {p0, v10, v0, v8}, Lmi;->a(III)Lmh;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0, v2}, Lmi;->a(Lmh;I)V

    .line 35
    invoke-virtual {p0, v0}, Lmi;->a(Lmh;)V

    .line 36
    iget v0, p1, Lmh;->a:I

    if-ne v0, v6, :cond_6

    add-int/2addr v2, v8

    :cond_6
    move v0, v9

    const/4 v8, 0x1

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 37
    :cond_7
    iget-object v1, p1, Lmh;->c:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p1}, Lmi;->a(Lmh;)V

    if-lez v8, :cond_8

    .line 39
    iget p1, p1, Lmh;->a:I

    invoke-virtual {p0, p1, v0, v8}, Lmi;->a(III)Lmh;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1, v2}, Lmi;->a(Lmh;I)V

    .line 41
    invoke-virtual {p0, p1}, Lmi;->a(Lmh;)V

    :cond_8
    return-void

    .line 42
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private final c(Lmh;)V
    .locals 5

    iget-object v0, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget v0, p1, Lmh;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lmi;->d:Lqb;

    .line 59
    iget v1, p1, Lmh;->b:I

    iget v2, p1, Lmh;->d:I

    iget-object p1, p1, Lmh;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lqb;->c(II)V

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iget-object v0, p0, Lmi;->d:Lqb;

    .line 60
    iget v2, p1, Lmh;->b:I

    iget p1, p1, Lmh;->d:I

    iget-object v3, v0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    .line 61
    invoke-virtual {v3, v2, p1, v4}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    iget-object p1, v0, Lqb;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, p1, Landroid/support/v7/widget/RecyclerView;->H:Z

    return-void

    :cond_2
    iget-object v0, p0, Lmi;->d:Lqb;

    .line 62
    iget v1, p1, Lmh;->b:I

    iget p1, p1, Lmh;->d:I

    invoke-virtual {v0, v1, p1}, Lqb;->b(II)V

    return-void
.end method

.method private final c(I)Z
    .locals 7

    iget-object v0, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmh;

    .line 6
    iget v4, v3, Lmh;->a:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 7
    iget v4, v3, Lmh;->b:I

    iget v3, v3, Lmh;->d:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_1

    add-int/lit8 v6, v2, 0x1

    .line 8
    invoke-virtual {p0, v4, v6}, Lmi;->a(II)I

    move-result v6

    if-ne v6, p1, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method final a(II)I
    .locals 5

    iget-object v0, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_3

    iget-object v1, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmh;

    .line 50
    iget v2, v1, Lmh;->a:I

    .line 51
    iget v3, v1, Lmh;->b:I

    if-gt v3, p1, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 52
    iget v1, v1, Lmh;->d:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 53
    iget v1, v1, Lmh;->d:I

    add-int/2addr p1, v1

    .line 52
    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 53
    :cond_3
    return p1
.end method

.method public final a(III)Lmh;
    .locals 1

    iget-object v0, p0, Lmi;->e:Lfi;

    .line 55
    invoke-virtual {v0}, Lfi;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmh;

    if-nez v0, :cond_0

    new-instance v0, Lmh;

    .line 56
    invoke-direct {v0, p1, p2, p3}, Lmh;-><init>(III)V

    goto :goto_0

    :cond_0
    iput p1, v0, Lmh;->a:I

    iput p2, v0, Lmh;->b:I

    iput p3, v0, Lmh;->d:I

    const/4 p1, 0x0

    iput-object p1, v0, Lmh;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lmi;->a:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p0, v0}, Lmi;->a(Ljava/util/List;)V

    iget-object v0, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p0, v0}, Lmi;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Lmi;->c:I

    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 3

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmh;

    invoke-virtual {p0, v2}, Lmi;->a(Lmh;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Lmh;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lmh;->c:Ljava/lang/Object;

    iget-object v0, p0, Lmi;->e:Lfi;

    .line 99
    invoke-virtual {v0, p1}, Lfi;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Lmh;I)V
    .locals 2

    iget-object v0, p0, Lmi;->d:Lqb;

    .line 43
    invoke-virtual {v0, p1}, Lqb;->a(Lmh;)V

    iget v0, p1, Lmh;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lmi;->d:Lqb;

    iget p1, p1, Lmh;->d:I

    .line 44
    invoke-virtual {v0, p2, p1}, Lqb;->c(II)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    iget-object v0, p0, Lmi;->d:Lqb;

    iget p1, p1, Lmh;->d:I

    .line 45
    invoke-virtual {v0, p2, p1}, Lqb;->a(II)V

    return-void
.end method

.method public final a(I)Z
    .locals 1

    iget v0, p0, Lmi;->c:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(I)I
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmi;->a(II)I

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 13

    iget-object v0, p0, Lmi;->a:Ljava/util/ArrayList;

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmh;

    .line 66
    iget v3, v3, Lmh;->a:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmi;->a:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_13

    iget-object v4, p0, Lmi;->a:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmh;

    .line 69
    iget v5, v4, Lmh;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_12

    const/4 v7, 0x2

    if-eq v5, v7, :cond_9

    const/4 v7, 0x4

    if-eq v5, v7, :cond_1

    goto/16 :goto_f

    .line 84
    :cond_1
    iget v5, v4, Lmh;->b:I

    .line 85
    iget v8, v4, Lmh;->d:I

    add-int/2addr v8, v5

    move v9, v5

    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_2
    if-ge v5, v8, :cond_6

    iget-object v12, p0, Lmi;->d:Lqb;

    .line 86
    invoke-virtual {v12, v5}, Lqb;->a(I)Lqz;

    move-result-object v12

    if-nez v12, :cond_4

    .line 87
    invoke-direct {p0, v5}, Lmi;->c(I)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_4

    .line 89
    :cond_2
    if-ne v11, v6, :cond_3

    .line 90
    iget-object v11, v4, Lmh;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v9, v10}, Lmi;->a(III)Lmh;

    move-result-object v9

    .line 91
    invoke-direct {p0, v9}, Lmi;->c(Lmh;)V

    move v9, v5

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    nop

    :goto_3
    const/4 v11, 0x0

    goto :goto_6

    .line 87
    :cond_4
    :goto_4
    if-nez v11, :cond_5

    .line 88
    iget-object v11, v4, Lmh;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v9, v10}, Lmi;->a(III)Lmh;

    move-result-object v9

    .line 89
    invoke-direct {p0, v9}, Lmi;->b(Lmh;)V

    move v9, v5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    nop

    :goto_5
    const/4 v11, 0x1

    :goto_6
    add-int/2addr v10, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 92
    :cond_6
    iget v5, v4, Lmh;->d:I

    if-eq v10, v5, :cond_7

    .line 93
    iget-object v5, v4, Lmh;->c:Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, v4}, Lmi;->a(Lmh;)V

    .line 95
    invoke-virtual {p0, v7, v9, v10}, Lmi;->a(III)Lmh;

    move-result-object v4

    goto :goto_7

    .line 97
    :cond_7
    nop

    .line 95
    :goto_7
    if-nez v11, :cond_8

    .line 96
    invoke-direct {p0, v4}, Lmi;->b(Lmh;)V

    goto/16 :goto_f

    .line 97
    :cond_8
    invoke-direct {p0, v4}, Lmi;->c(Lmh;)V

    goto :goto_f

    .line 71
    :cond_9
    iget v5, v4, Lmh;->b:I

    .line 72
    iget v8, v4, Lmh;->d:I

    add-int/2addr v8, v5

    move v9, v5

    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_8
    if-ge v9, v8, :cond_f

    iget-object v12, p0, Lmi;->d:Lqb;

    .line 73
    invoke-virtual {v12, v9}, Lqb;->a(I)Lqz;

    move-result-object v12

    if-nez v12, :cond_c

    .line 74
    invoke-direct {p0, v9}, Lmi;->c(I)Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_a

    .line 76
    :cond_a
    if-ne v11, v6, :cond_b

    .line 77
    invoke-virtual {p0, v7, v5, v10}, Lmi;->a(III)Lmh;

    move-result-object v11

    .line 78
    invoke-direct {p0, v11}, Lmi;->c(Lmh;)V

    const/4 v11, 0x1

    goto :goto_9

    :cond_b
    const/4 v11, 0x0

    :goto_9
    const/4 v12, 0x0

    goto :goto_c

    .line 74
    :cond_c
    :goto_a
    if-nez v11, :cond_d

    .line 75
    invoke-virtual {p0, v7, v5, v10}, Lmi;->a(III)Lmh;

    move-result-object v11

    .line 76
    invoke-direct {p0, v11}, Lmi;->b(Lmh;)V

    const/4 v11, 0x1

    goto :goto_b

    :cond_d
    const/4 v11, 0x0

    :goto_b
    const/4 v12, 0x1

    :goto_c
    if-eqz v11, :cond_e

    sub-int/2addr v9, v10

    sub-int/2addr v8, v10

    const/4 v10, 0x1

    goto :goto_d

    :cond_e
    add-int/lit8 v10, v10, 0x1

    :goto_d
    add-int/2addr v9, v6

    move v11, v12

    goto :goto_8

    .line 79
    :cond_f
    iget v6, v4, Lmh;->d:I

    if-eq v10, v6, :cond_10

    .line 80
    invoke-virtual {p0, v4}, Lmi;->a(Lmh;)V

    .line 81
    invoke-virtual {p0, v7, v5, v10}, Lmi;->a(III)Lmh;

    move-result-object v4

    goto :goto_e

    .line 83
    :cond_10
    nop

    .line 81
    :goto_e
    if-nez v11, :cond_11

    .line 82
    invoke-direct {p0, v4}, Lmi;->b(Lmh;)V

    goto :goto_f

    .line 83
    :cond_11
    invoke-direct {p0, v4}, Lmi;->c(Lmh;)V

    goto :goto_f

    .line 70
    :cond_12
    invoke-direct {p0, v4}, Lmi;->c(Lmh;)V

    .line 69
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 97
    :cond_13
    iget-object v0, p0, Lmi;->a:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lmi;->d:Lqb;

    iget-object v4, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmh;

    .line 11
    invoke-virtual {v3, v4}, Lqb;->a(Lmh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmi;->b:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, v0}, Lmi;->a(Ljava/util/List;)V

    iput v1, p0, Lmi;->c:I

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lmi;->a:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 7

    .line 13
    invoke-virtual {p0}, Lmi;->c()V

    iget-object v0, p0, Lmi;->a:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lmi;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmh;

    .line 16
    iget v4, v3, Lmh;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lmi;->d:Lqb;

    .line 17
    invoke-virtual {v4, v3}, Lqb;->a(Lmh;)V

    iget-object v4, p0, Lmi;->d:Lqb;

    .line 18
    iget v5, v3, Lmh;->b:I

    iget v6, v3, Lmh;->d:I

    iget-object v3, v3, Lmh;->c:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lqb;->c(II)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lmi;->d:Lqb;

    .line 19
    invoke-virtual {v4, v3}, Lqb;->a(Lmh;)V

    iget-object v4, p0, Lmi;->d:Lqb;

    .line 20
    iget v5, v3, Lmh;->b:I

    iget v3, v3, Lmh;->d:I

    invoke-virtual {v4, v5, v3}, Lqb;->a(II)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lmi;->d:Lqb;

    .line 21
    invoke-virtual {v4, v3}, Lqb;->a(Lmh;)V

    iget-object v4, p0, Lmi;->d:Lqb;

    .line 22
    iget v5, v3, Lmh;->b:I

    iget v3, v3, Lmh;->d:I

    invoke-virtual {v4, v5, v3}, Lqb;->b(II)V

    .line 16
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lmi;->a:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0, v0}, Lmi;->a(Ljava/util/List;)V

    iput v1, p0, Lmi;->c:I

    return-void
.end method
