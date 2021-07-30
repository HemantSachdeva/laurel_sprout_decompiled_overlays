.class public final Loz;
.super Lph;
.source "PG"


# instance fields
.field a:Z

.field b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field final g:Loy;

.field final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lph;-><init>(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Loz;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Loz;->b:I

    new-instance v1, Landroid/util/SparseIntArray;

    .line 2
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Loz;->e:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    .line 3
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Loz;->f:Landroid/util/SparseIntArray;

    new-instance v1, Loy;

    .line 4
    invoke-direct {v1}, Loy;-><init>()V

    iput-object v1, p0, Loz;->g:Loy;

    new-instance v2, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Loz;->h:Landroid/graphics/Rect;

    iget v2, p0, Loz;->b:I

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Loz;->a:Z

    if-lez p1, :cond_1

    .line 6
    iput p1, p0, Loz;->b:I

    .line 7
    invoke-virtual {v1}, Loy;->a()V

    .line 8
    invoke-virtual {p0}, Lqk;->q()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A()V
    .locals 2

    iget v0, p0, Lph;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lqk;->B:I

    .line 218
    invoke-virtual {p0}, Lqk;->v()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lqk;->t()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 219
    :cond_0
    iget v0, p0, Lqk;->C:I

    .line 217
    invoke-virtual {p0}, Lqk;->w()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lqk;->u()I

    move-result v1

    sub-int/2addr v0, v1

    .line 219
    :goto_0
    invoke-direct {p0, v0}, Loz;->h(I)V

    return-void
.end method

.method private final B()V
    .locals 2

    iget-object v0, p0, Loz;->d:[Landroid/view/View;

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v1, p0, Loz;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    return-void

    .line 0
    :cond_1
    :goto_0
    iget v0, p0, Loz;->b:I

    .line 20
    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Loz;->d:[Landroid/view/View;

    return-void
.end method

.method private final a(Lqq;Lqx;I)I
    .locals 0

    iget-boolean p2, p2, Lqx;->g:Z

    if-nez p2, :cond_0

    iget p1, p0, Loz;->b:I

    invoke-static {p3, p1}, Loy;->a(II)I

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-virtual {p1, p3}, Lqq;->a(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    iget p2, p0, Loz;->b:I

    invoke-static {p1, p2}, Loy;->a(II)I

    move-result p1

    return p1
.end method

.method private final a(Landroid/view/View;IIZ)V
    .locals 3

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lql;

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lqk;->v:Z

    if-eqz p4, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget v2, v0, Lql;->width:I

    invoke-static {p4, p2, v2}, Lqk;->b(III)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v0, v0, Lql;->height:I

    invoke-static {p4, p3, v0}, Lqk;->b(III)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lqk;->a(Landroid/view/View;IILql;)Z

    move-result v1

    .line 131
    :goto_0
    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_3
    return-void
.end method

.method private final a(Landroid/view/View;IZ)V
    .locals 8

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lox;

    .line 120
    iget-object v1, v0, Lox;->d:Landroid/graphics/Rect;

    .line 121
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Lox;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lox;->bottomMargin:I

    add-int/2addr v2, v3

    .line 122
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Lox;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lox;->rightMargin:I

    add-int/2addr v3, v1

    .line 123
    iget v1, v0, Lox;->a:I

    iget v4, v0, Lox;->b:I

    invoke-virtual {p0, v1, v4}, Loz;->a(II)I

    move-result v1

    iget v4, p0, Loz;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 124
    iget v4, v0, Lox;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Loz;->a(IIIIZ)I

    move-result p2

    iget-object v1, p0, Loz;->j:Lpv;

    .line 125
    invoke-virtual {v1}, Lpv;->d()I

    move-result v1

    iget v3, p0, Lqk;->A:I

    iget v0, v0, Lox;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Loz;->a(IIIIZ)I

    move-result v0

    goto :goto_0

    .line 126
    :cond_0
    iget v4, v0, Lox;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Loz;->a(IIIIZ)I

    move-result p2

    iget-object v1, p0, Loz;->j:Lpv;

    .line 127
    invoke-virtual {v1}, Lpv;->d()I

    move-result v1

    iget v2, p0, Lqk;->z:I

    iget v0, v0, Lox;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Loz;->a(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    .line 128
    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Loz;->a(Landroid/view/View;IIZ)V

    return-void
.end method

.method private final b(Lqq;Lqx;I)I
    .locals 1

    iget-boolean p2, p2, Lqx;->g:Z

    if-nez p2, :cond_0

    iget p1, p0, Loz;->b:I

    .line 47
    rem-int/2addr p3, p1

    return p3

    :cond_0
    iget-object p2, p0, Loz;->f:Landroid/util/SparseIntArray;

    .line 48
    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 49
    :cond_1
    invoke-virtual {p1, p3}, Lqq;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2
    iget p2, p0, Loz;->b:I

    .line 51
    rem-int/2addr p1, p2

    return p1
.end method

.method private final c(Lqq;Lqx;I)I
    .locals 2

    iget-boolean p2, p2, Lqx;->g:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Loz;->e:Landroid/util/SparseIntArray;

    .line 52
    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v1, :cond_1

    return p2

    .line 53
    :cond_1
    invoke-virtual {p1, p3}, Lqq;->a(I)I

    move-result p1

    if-ne p1, v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private final h(I)V
    .locals 7

    iget-object v0, p0, Loz;->c:[I

    iget v1, p0, Loz;->b:I

    if-eqz v0, :cond_0

    array-length v2, v0

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 9
    aget v2, v0, v2

    if-eq v2, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 10
    new-array v0, v0, [I

    :cond_1
    nop

    .line 11
    const/4 v2, 0x0

    aput v2, v0, v2

    .line 12
    div-int v3, p1, v1

    .line 13
    rem-int/2addr p1, v1

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-gt v5, v1, :cond_3

    add-int/2addr v2, p1

    if-lez v2, :cond_2

    sub-int v6, v1, v2

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v2, v1

    goto :goto_1

    .line 14
    :cond_2
    nop

    .line 13
    move v6, v3

    :goto_1
    add-int/2addr v4, v6

    .line 14
    aput v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Loz;->c:[I

    return-void
.end method


# virtual methods
.method final a(II)I
    .locals 2

    iget v0, p0, Loz;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lph;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loz;->c:[I

    iget v1, p0, Loz;->b:I

    sub-int/2addr v1, p1

    .line 44
    aget p1, v0, v1

    sub-int/2addr v1, p2

    aget p2, v0, v1

    sub-int/2addr p1, p2

    return p1

    :cond_0
    iget-object v0, p0, Loz;->c:[I

    add-int/2addr p2, p1

    .line 43
    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public final a(ILqq;Lqx;)I
    .locals 0

    .line 199
    invoke-direct {p0}, Loz;->A()V

    .line 200
    invoke-direct {p0}, Loz;->B()V

    .line 201
    invoke-super {p0, p1, p2, p3}, Lph;->a(ILqq;Lqx;)I

    move-result p1

    return p1
.end method

.method public final a(Lqq;Lqx;)I
    .locals 1

    iget v0, p0, Loz;->i:I

    if-nez v0, :cond_0

    iget p1, p0, Loz;->b:I

    return p1

    .line 40
    :cond_0
    invoke-virtual {p2}, Lqx;->a()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 41
    :cond_1
    invoke-virtual {p2}, Lqx;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Loz;->a(Lqq;Lqx;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final a(Landroid/view/View;ILqq;Lqx;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object/from16 v5, p1

    move-object v3, v4

    goto :goto_0

    .line 143
    :cond_0
    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lqk;->p:Lnu;

    .line 144
    invoke-virtual {v6, v3}, Lnu;->c(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v4

    .line 0
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    return-object v4

    .line 145
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lox;

    .line 146
    iget v7, v6, Lox;->a:I

    .line 147
    iget v6, v6, Lox;->b:I

    add-int/2addr v6, v7

    .line 148
    invoke-super/range {p0 .. p4}, Lph;->a(Landroid/view/View;ILqq;Lqx;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    return-object v4

    .line 149
    :cond_4
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Lph;->d(I)I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    .line 151
    :cond_5
    const/4 v5, 0x1

    .line 149
    :goto_1
    iget-boolean v10, v0, Loz;->k:Z

    const/4 v11, -0x1

    if-eq v5, v10, :cond_6

    .line 150
    invoke-virtual/range {p0 .. p0}, Lqk;->s()I

    move-result v5

    add-int/2addr v5, v11

    const/4 v10, -0x1

    const/4 v12, -0x1

    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lqk;->s()I

    move-result v5

    move v10, v5

    const/4 v5, 0x0

    const/4 v12, 0x1

    .line 150
    :goto_2
    iget v13, v0, Loz;->i:I

    if-ne v13, v8, :cond_7

    .line 152
    invoke-virtual/range {p0 .. p0}, Lph;->k()Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    goto :goto_3

    .line 167
    :cond_7
    const/4 v13, 0x0

    .line 153
    :goto_3
    invoke-direct {v0, v1, v2, v5}, Loz;->a(Lqq;Lqx;I)I

    move-result v14

    move v11, v5

    move/from16 v16, v12

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    move-object v5, v4

    :goto_4
    if-eq v11, v10, :cond_19

    .line 154
    move/from16 v17, v10

    invoke-direct {v0, v1, v2, v11}, Loz;->a(Lqq;Lqx;I)I

    move-result v10

    .line 155
    invoke-virtual {v0, v11}, Lqk;->g(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_8

    goto/16 :goto_d

    .line 156
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_9

    if-eq v10, v14, :cond_9

    if-nez v4, :cond_19

    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v21, v14

    goto/16 :goto_b

    .line 157
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lox;

    .line 158
    iget v2, v10, Lox;->a:I

    .line 159
    move-object/from16 v18, v3

    iget v3, v10, Lox;->b:I

    add-int/2addr v3, v2

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_b

    if-ne v2, v7, :cond_b

    if-eq v3, v6, :cond_a

    goto :goto_5

    .line 167
    :cond_a
    return-object v1

    .line 161
    :cond_b
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_d

    if-eqz v4, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v19, v9

    move/from16 v21, v14

    goto :goto_a

    .line 162
    :cond_d
    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_e

    if-nez v5, :cond_e

    move/from16 v19, v9

    move/from16 v21, v14

    goto :goto_a

    .line 163
    :cond_e
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 164
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v21, v14

    sub-int v14, v20, v19

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_12

    if-gt v14, v9, :cond_11

    if-ne v14, v9, :cond_10

    if-gt v2, v15, :cond_f

    const/4 v14, 0x0

    goto :goto_7

    :cond_f
    const/4 v14, 0x1

    :goto_7
    if-eq v13, v14, :cond_11

    :cond_10
    move/from16 v19, v9

    goto :goto_b

    :cond_11
    move/from16 v19, v9

    goto :goto_a

    :cond_12
    if-nez v4, :cond_17

    move/from16 v19, v9

    iget-object v9, v0, Lqk;->r:Lsa;

    .line 166
    invoke-virtual {v9, v1}, Lsa;->a(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v0, Lqk;->s:Lsa;

    .line 167
    invoke-virtual {v9, v1}, Lsa;->a(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_13

    :goto_8
    goto :goto_b

    :cond_13
    if-gt v14, v12, :cond_15

    if-ne v14, v12, :cond_18

    if-gt v2, v8, :cond_14

    const/4 v9, 0x0

    goto :goto_9

    :cond_14
    const/4 v9, 0x1

    :goto_9
    if-eq v13, v9, :cond_15

    goto :goto_8

    .line 168
    :cond_15
    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 169
    iget v4, v10, Lox;->a:I

    .line 170
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 171
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v9, v3, v2

    move v15, v4

    move-object v4, v1

    goto :goto_c

    .line 172
    :cond_16
    iget v5, v10, Lox;->a:I

    .line 173
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 174
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v12, v3, v2

    move v8, v5

    move/from16 v9, v19

    move-object v5, v1

    goto :goto_c

    .line 167
    :cond_17
    move/from16 v19, v9

    .line 156
    :cond_18
    :goto_b
    move/from16 v9, v19

    :goto_c
    add-int v11, v11, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v10, v17

    move-object/from16 v3, v18

    move/from16 v14, v21

    goto/16 :goto_4

    .line 155
    :cond_19
    :goto_d
    if-eqz v4, :cond_1a

    return-object v4

    :cond_1a
    return-object v5
.end method

.method public final a(Lqq;Lqx;Z)Landroid/view/View;
    .locals 8

    .line 21
    invoke-virtual {p0}, Lqk;->s()I

    move-result p3

    .line 22
    invoke-virtual {p2}, Lqx;->a()I

    move-result v0

    .line 23
    invoke-virtual {p0}, Lph;->l()V

    iget-object v1, p0, Loz;->j:Lpv;

    .line 24
    invoke-virtual {v1}, Lpv;->c()I

    move-result v1

    iget-object v2, p0, Loz;->j:Lpv;

    .line 25
    invoke-virtual {v2}, Lpv;->a()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :goto_0
    if-eq v5, p3, :cond_7

    .line 26
    invoke-virtual {p0, v5}, Lqk;->g(I)Landroid/view/View;

    move-result-object v6

    .line 27
    invoke-static {v6}, Loz;->i(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, v0, :cond_5

    .line 28
    invoke-direct {p0, p1, p2, v7}, Loz;->b(Lqq;Lqx;I)I

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_3

    .line 29
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lql;

    invoke-virtual {v7}, Lql;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_6

    move-object v4, v6

    goto :goto_3

    :cond_1
    iget-object v7, p0, Loz;->j:Lpv;

    .line 30
    invoke-virtual {v7, v6}, Lpv;->d(Landroid/view/View;)I

    move-result v7

    if-ge v7, v2, :cond_3

    iget-object v7, p0, Loz;->j:Lpv;

    .line 31
    invoke-virtual {v7, v6}, Lpv;->c(Landroid/view/View;)I

    move-result v7

    if-ge v7, v1, :cond_2

    goto :goto_1

    :cond_2
    return-object v6

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v6

    goto :goto_3

    :cond_5
    :goto_2
    nop

    .line 28
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 31
    :cond_7
    if-eqz v3, :cond_8

    return-object v3

    :cond_8
    return-object v4
.end method

.method public final a()Lql;
    .locals 3

    iget v0, p0, Loz;->i:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Lox;

    .line 32
    invoke-direct {v0, v1, v2}, Lox;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lox;

    .line 33
    invoke-direct {v0, v2, v1}, Lox;-><init>(II)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Lql;
    .locals 1

    new-instance v0, Lox;

    .line 34
    invoke-direct {v0, p1, p2}, Lox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Lql;
    .locals 1

    .line 35
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lox;

    .line 36
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lox;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lox;

    .line 37
    invoke-direct {v0, p1}, Lox;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final a(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Loz;->c:[I

    if-nez v0, :cond_0

    .line 205
    invoke-super {p0, p1, p2, p3}, Lph;->a(Landroid/graphics/Rect;II)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lqk;->t()I

    move-result v0

    invoke-virtual {p0}, Lqk;->v()I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    invoke-virtual {p0}, Lqk;->u()I

    move-result v1

    invoke-virtual {p0}, Lqk;->w()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Loz;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 209
    invoke-virtual {p0}, Lqk;->z()I

    move-result v1

    invoke-static {p3, p1, v1}, Loz;->a(III)I

    move-result p1

    iget-object p3, p0, Loz;->c:[I

    .line 210
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget p3, p3, v1

    add-int/2addr p3, v0

    .line 211
    invoke-virtual {p0}, Lqk;->y()I

    move-result v0

    .line 210
    invoke-static {p2, p3, v0}, Loz;->a(III)I

    move-result p2

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 213
    invoke-virtual {p0}, Lqk;->y()I

    move-result v0

    invoke-static {p2, p1, v0}, Loz;->a(III)I

    move-result p2

    iget-object p1, p0, Loz;->c:[I

    .line 214
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    add-int/2addr p1, v1

    .line 215
    invoke-virtual {p0}, Lqk;->z()I

    move-result v0

    .line 214
    invoke-static {p3, p1, v0}, Loz;->a(III)I

    move-result p1

    .line 216
    :goto_0
    invoke-virtual {p0, p2, p1}, Lqk;->e(II)V

    return-void
.end method

.method public final a(Lqq;Lqx;Landroid/view/View;Lgz;)V
    .locals 2

    .line 175
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 176
    instance-of v1, v0, Lox;

    if-nez v1, :cond_0

    .line 177
    invoke-super {p0, p3, p4}, Lph;->a(Landroid/view/View;Lgz;)V

    return-void

    .line 178
    :cond_0
    check-cast v0, Lox;

    .line 179
    invoke-virtual {v0}, Lql;->c()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Loz;->a(Lqq;Lqx;I)I

    move-result p1

    iget p2, p0, Loz;->i:I

    const/4 p3, 0x1

    if-nez p2, :cond_1

    iget p2, v0, Lox;->a:I

    iget v0, v0, Lox;->b:I

    .line 181
    invoke-static {p2, v0, p1, p3}, Lgy;->a(IIII)Lgy;

    move-result-object p1

    invoke-virtual {p4, p1}, Lgz;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget p2, v0, Lox;->a:I

    iget v0, v0, Lox;->b:I

    .line 180
    invoke-static {p1, p3, p2, v0}, Lgy;->a(IIII)Lgy;

    move-result-object p1

    invoke-virtual {p4, p1}, Lgz;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lqq;Lqx;Lpc;I)V
    .locals 4

    .line 134
    invoke-direct {p0}, Loz;->A()V

    .line 135
    invoke-virtual {p2}, Lqx;->a()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p2, Lqx;->g:Z

    if-nez v0, :cond_2

    .line 136
    iget v0, p3, Lpc;->b:I

    invoke-direct {p0, p1, p2, v0}, Loz;->b(Lqq;Lqx;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    :goto_0
    if-lez v0, :cond_2

    .line 137
    iget p4, p3, Lpc;->b:I

    if-lez p4, :cond_2

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Lpc;->b:I

    .line 138
    invoke-direct {p0, p1, p2, p4}, Loz;->b(Lqq;Lqx;I)I

    move-result v0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p2}, Lqx;->a()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    .line 140
    iget v1, p3, Lpc;->b:I

    :goto_1
    if-ge v1, p4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 141
    invoke-direct {p0, p1, p2, v2}, Loz;->b(Lqq;Lqx;I)I

    move-result v3

    if-le v3, v0, :cond_1

    move v1, v2

    move v0, v3

    goto :goto_1

    :cond_1
    iput v1, p3, Lpc;->b:I

    .line 142
    :cond_2
    invoke-direct {p0}, Loz;->B()V

    return-void
.end method

.method public final a(Lqq;Lqx;Lpe;Lpd;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Loz;->j:Lpv;

    .line 55
    invoke-virtual {v5}, Lpv;->g()I

    move-result v5

    .line 56
    invoke-virtual/range {p0 .. p0}, Lqk;->s()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, v0, Loz;->c:[I

    iget v8, v0, Loz;->b:I

    aget v6, v6, v8

    goto :goto_0

    .line 65
    :cond_0
    const/4 v6, 0x0

    .line 56
    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v8, :cond_1

    .line 57
    invoke-direct/range {p0 .. p0}, Loz;->A()V

    .line 58
    :cond_1
    iget v9, v3, Lpe;->e:I

    iget v10, v0, Loz;->b:I

    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    .line 59
    iget v10, v3, Lpe;->d:I

    invoke-direct {v0, v1, v2, v10}, Loz;->b(Lqq;Lqx;I)I

    move-result v10

    .line 60
    iget v12, v3, Lpe;->d:I

    invoke-direct {v0, v1, v2, v12}, Loz;->c(Lqq;Lqx;I)I

    move-result v12

    add-int/2addr v10, v12

    const/4 v12, 0x0

    goto :goto_1

    .line 65
    :cond_2
    const/4 v12, 0x0

    .line 60
    :goto_1
    iget v13, v0, Loz;->b:I

    if-ge v12, v13, :cond_5

    .line 61
    invoke-virtual {v3, v2}, Lpe;->a(Lqx;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-lez v10, :cond_5

    .line 62
    iget v13, v3, Lpe;->d:I

    .line 63
    invoke-direct {v0, v1, v2, v13}, Loz;->c(Lqq;Lqx;I)I

    move-result v14

    iget v15, v0, Loz;->b:I

    if-gt v14, v15, :cond_4

    .line 66
    sub-int/2addr v10, v14

    if-gez v10, :cond_3

    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v3, v1}, Lpe;->a(Lqq;)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_5

    iget-object v14, v0, Loz;->d:[Landroid/view/View;

    .line 65
    aput-object v13, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 63
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Loz;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    if-eqz v12, :cond_1c

    if-ne v9, v11, :cond_6

    move v14, v12

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto :goto_3

    .line 105
    :cond_6
    add-int/lit8 v13, v12, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 66
    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-eq v13, v14, :cond_7

    iget-object v8, v0, Loz;->d:[Landroid/view/View;

    .line 67
    aget-object v8, v8, v13

    .line 68
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lox;

    .line 69
    invoke-static {v8}, Loz;->i(Landroid/view/View;)I

    move-result v8

    invoke-direct {v0, v1, v2, v8}, Loz;->c(Lqq;Lqx;I)I

    move-result v8

    iput v8, v7, Lox;->b:I

    iput v10, v7, Lox;->a:I

    add-int/2addr v10, v8

    add-int/2addr v13, v15

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v2, v12, :cond_e

    iget-object v8, v0, Loz;->d:[Landroid/view/View;

    .line 70
    aget-object v8, v8, v2

    .line 71
    iget-object v10, v3, Lpe;->l:Ljava/util/List;

    if-nez v10, :cond_9

    if-ne v9, v11, :cond_8

    .line 72
    invoke-virtual {v0, v8}, Lqk;->b(Landroid/view/View;)V

    const/4 v10, 0x0

    goto :goto_6

    .line 78
    :cond_8
    nop

    .line 73
    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Lqk;->b(Landroid/view/View;I)V

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    if-ne v9, v11, :cond_a

    .line 74
    invoke-virtual {v0, v8}, Lqk;->a(Landroid/view/View;)V

    goto :goto_6

    :cond_a
    nop

    .line 75
    invoke-virtual {v0, v8, v10}, Lqk;->a(Landroid/view/View;I)V

    .line 72
    :goto_6
    iget-object v13, v0, Loz;->h:Landroid/graphics/Rect;

    iget-object v14, v0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v14, :cond_b

    .line 76
    invoke-virtual {v13, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 77
    :cond_b
    invoke-virtual {v14, v8}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v14

    .line 78
    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    :goto_7
    nop

    .line 79
    invoke-direct {v0, v8, v5, v10}, Loz;->a(Landroid/view/View;IZ)V

    iget-object v10, v0, Loz;->j:Lpv;

    .line 80
    invoke-virtual {v10, v8}, Lpv;->a(Landroid/view/View;)I

    move-result v10

    if-le v10, v7, :cond_c

    move v7, v10

    .line 81
    :cond_c
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lox;

    iget-object v13, v0, Loz;->j:Lpv;

    .line 82
    invoke-virtual {v13, v8}, Lpv;->b(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    iget v10, v10, Lox;->b:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    cmpl-float v10, v8, v1

    if-lez v10, :cond_d

    move v1, v8

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 75
    :cond_e
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v5, v2, :cond_10

    iget v2, v0, Loz;->b:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 83
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 84
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Loz;->h(I)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v12, :cond_10

    iget-object v1, v0, Loz;->d:[Landroid/view/View;

    .line 85
    aget-object v1, v1, v10

    .line 86
    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v11}, Loz;->a(Landroid/view/View;IZ)V

    iget-object v2, v0, Loz;->j:Lpv;

    .line 87
    invoke-virtual {v2, v1}, Lpv;->a(Landroid/view/View;)I

    move-result v1

    if-le v1, v7, :cond_f

    move v7, v1

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_10
    const/4 v10, 0x0

    :goto_9
    if-ge v10, v12, :cond_13

    iget-object v1, v0, Loz;->d:[Landroid/view/View;

    .line 88
    aget-object v1, v1, v10

    iget-object v2, v0, Loz;->j:Lpv;

    .line 89
    invoke-virtual {v2, v1}, Lpv;->a(Landroid/view/View;)I

    move-result v2

    if-eq v2, v7, :cond_12

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lox;

    .line 91
    iget-object v5, v2, Lox;->d:Landroid/graphics/Rect;

    .line 92
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v8

    iget v8, v2, Lox;->topMargin:I

    add-int/2addr v6, v8

    iget v8, v2, Lox;->bottomMargin:I

    add-int/2addr v6, v8

    .line 93
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v5

    iget v5, v2, Lox;->leftMargin:I

    add-int/2addr v8, v5

    iget v5, v2, Lox;->rightMargin:I

    add-int/2addr v8, v5

    .line 94
    iget v5, v2, Lox;->a:I

    iget v9, v2, Lox;->b:I

    invoke-virtual {v0, v5, v9}, Loz;->a(II)I

    move-result v5

    iget v9, v0, Loz;->i:I

    if-ne v9, v11, :cond_11

    .line 95
    iget v2, v2, Lox;->width:I

    const/4 v9, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v5, v13, v8, v2, v9}, Loz;->a(IIIIZ)I

    move-result v2

    sub-int v5, v7, v6

    .line 96
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_a

    .line 99
    :cond_11
    const/4 v9, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    sub-int v8, v7, v8

    .line 97
    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 98
    iget v2, v2, Lox;->height:I

    invoke-static {v5, v13, v6, v2, v9}, Loz;->a(IIIIZ)I

    move-result v5

    move v2, v8

    .line 96
    :goto_a
    nop

    .line 99
    invoke-direct {v0, v1, v2, v5, v11}, Loz;->a(Landroid/view/View;IIZ)V

    goto :goto_b

    .line 89
    :cond_12
    const/4 v9, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    .line 99
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 98
    :cond_13
    const/4 v9, 0x0

    iput v7, v4, Lpd;->a:I

    iget v1, v0, Loz;->i:I

    if-ne v1, v11, :cond_15

    .line 100
    iget v1, v3, Lpe;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 101
    iget v10, v3, Lpe;->b:I

    sub-int v1, v10, v7

    move v2, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto :goto_c

    .line 102
    :cond_14
    iget v10, v3, Lpe;->b:I

    add-int v1, v10, v7

    move v2, v1

    move v1, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto :goto_c

    .line 103
    :cond_15
    const/4 v2, -0x1

    iget v1, v3, Lpe;->f:I

    if-ne v1, v2, :cond_16

    .line 104
    iget v10, v3, Lpe;->b:I

    sub-int v1, v10, v7

    move v3, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_c

    .line 105
    :cond_16
    iget v10, v3, Lpe;->b:I

    add-int v1, v10, v7

    move v3, v10

    const/4 v2, 0x0

    move v10, v1

    const/4 v1, 0x0

    .line 101
    :goto_c
    const/4 v7, 0x0

    :goto_d
    if-ge v7, v12, :cond_1b

    iget-object v5, v0, Loz;->d:[Landroid/view/View;

    .line 106
    aget-object v5, v5, v7

    .line 107
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lox;

    iget v8, v0, Loz;->i:I

    if-ne v8, v11, :cond_18

    .line 108
    invoke-virtual/range {p0 .. p0}, Lph;->k()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 109
    invoke-virtual/range {p0 .. p0}, Lqk;->t()I

    move-result v3

    iget-object v8, v0, Loz;->c:[I

    iget v9, v0, Loz;->b:I

    iget v10, v6, Lox;->a:I

    sub-int/2addr v9, v10

    aget v8, v8, v9

    add-int/2addr v3, v8

    iget-object v8, v0, Loz;->j:Lpv;

    .line 110
    invoke-virtual {v8, v5}, Lpv;->b(Landroid/view/View;)I

    move-result v8

    sub-int v8, v3, v8

    move v10, v3

    move v3, v8

    goto :goto_e

    .line 111
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lqk;->t()I

    move-result v3

    iget-object v8, v0, Loz;->c:[I

    iget v9, v6, Lox;->a:I

    aget v8, v8, v9

    add-int/2addr v3, v8

    iget-object v8, v0, Loz;->j:Lpv;

    .line 112
    invoke-virtual {v8, v5}, Lpv;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v3

    move v10, v8

    goto :goto_e

    .line 113
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lqk;->u()I

    move-result v1

    iget-object v2, v0, Loz;->c:[I

    iget v8, v6, Lox;->a:I

    aget v2, v2, v8

    add-int/2addr v1, v2

    iget-object v2, v0, Loz;->j:Lpv;

    .line 114
    invoke-virtual {v2, v5}, Lpv;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 115
    :goto_e
    invoke-static {v5, v3, v1, v10, v2}, Loz;->a(Landroid/view/View;IIII)V

    .line 116
    invoke-virtual {v6}, Lql;->a()Z

    move-result v8

    if-nez v8, :cond_19

    invoke-virtual {v6}, Lql;->b()Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_19
    iput-boolean v11, v4, Lpd;->c:Z

    .line 117
    :cond_1a
    iget-boolean v6, v4, Lpd;->d:Z

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    or-int/2addr v5, v6

    iput-boolean v5, v4, Lpd;->d:Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 114
    :cond_1b
    iget-object v1, v0, Loz;->d:[Landroid/view/View;

    const/4 v2, 0x0

    .line 118
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_1c
    iput-boolean v11, v4, Lpd;->b:Z

    return-void
.end method

.method public final a(Lqx;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lph;->a(Lqx;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Loz;->a:Z

    return-void
.end method

.method public final a(Lqx;Lpe;Lou;)V
    .locals 5

    iget v0, p0, Loz;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Loz;->b:I

    if-ge v2, v3, :cond_0

    .line 16
    invoke-virtual {p2, p1}, Lpe;->a(Lqx;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 17
    iget v3, p2, Lpe;->d:I

    .line 18
    iget v4, p2, Lpe;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Lou;->a(II)V

    add-int/lit8 v0, v0, -0x1

    .line 19
    iget v3, p2, Lpe;->d:I

    iget v4, p2, Lpe;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Lpe;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lql;)Z
    .locals 0

    .line 15
    instance-of p1, p1, Lox;

    return p1
.end method

.method public final b(ILqq;Lqx;)I
    .locals 0

    .line 202
    invoke-direct {p0}, Loz;->A()V

    .line 203
    invoke-direct {p0}, Loz;->B()V

    .line 204
    invoke-super {p0, p1, p2, p3}, Lph;->b(ILqq;Lqx;)I

    move-result p1

    return p1
.end method

.method public final b(Lqq;Lqx;)I
    .locals 2

    iget v0, p0, Loz;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Loz;->b:I

    return p1

    .line 38
    :cond_0
    invoke-virtual {p2}, Lqx;->a()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_1
    invoke-virtual {p2}, Lqx;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Loz;->a(Lqq;Lqx;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Loz;->n:Lpg;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Loz;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Loz;->g:Loy;

    .line 182
    invoke-virtual {v0}, Loy;->a()V

    iget-object v0, p0, Loz;->g:Loy;

    .line 183
    invoke-virtual {v0}, Loy;->b()V

    return-void
.end method

.method public final c(Lqq;Lqx;)V
    .locals 6

    iget-boolean v0, p2, Lqx;->g:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Lqk;->g(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lox;

    .line 192
    invoke-virtual {v2}, Lql;->c()I

    move-result v3

    iget-object v4, p0, Loz;->e:Landroid/util/SparseIntArray;

    iget v5, v2, Lox;->b:I

    .line 193
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Loz;->f:Landroid/util/SparseIntArray;

    iget v2, v2, Lox;->a:I

    .line 194
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-super {p0, p1, p2}, Lph;->c(Lqq;Lqx;)V

    iget-object p1, p0, Loz;->e:Landroid/util/SparseIntArray;

    .line 196
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p1, p0, Loz;->f:Landroid/util/SparseIntArray;

    .line 197
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Loz;->g:Loy;

    .line 184
    invoke-virtual {v0}, Loy;->a()V

    iget-object v0, p0, Loz;->g:Loy;

    .line 185
    invoke-virtual {v0}, Loy;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Loz;->g:Loy;

    .line 186
    invoke-virtual {v0}, Loy;->a()V

    iget-object v0, p0, Loz;->g:Loy;

    .line 187
    invoke-virtual {v0}, Loy;->b()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Loz;->g:Loy;

    .line 188
    invoke-virtual {v0}, Loy;->a()V

    iget-object v0, p0, Loz;->g:Loy;

    .line 189
    invoke-virtual {v0}, Loy;->b()V

    return-void
.end method
