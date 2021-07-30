.class public final Lnp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Landroid/graphics/Typeface;

.field public c:Z

.field private final d:Landroid/widget/TextView;

.field private e:Lrl;

.field private f:Lrl;

.field private g:Lrl;

.field private h:Lrl;

.field private i:Lrl;

.field private j:Lrl;

.field private final k:Lnr;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnp;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lnp;->l:I

    iput-object p1, p0, Lnp;->d:Landroid/widget/TextView;

    .line 1
    new-instance v0, Lnr;

    invoke-direct {v0, p1}, Lnr;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lnp;->k:Lnr;

    return-void
.end method

.method private static a(Landroid/content/Context;Lmq;I)Lrl;
    .locals 0

    .line 12
    invoke-virtual {p1, p0, p2}, Lmq;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lrl;

    invoke-direct {p1}, Lrl;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lrl;->d:Z

    iput-object p0, p1, Lrl;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final a(Landroid/content/Context;Lrn;)V
    .locals 18

    .line 190
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    sget-object v0, Ljh;->a:[I

    iget v0, v1, Lnp;->a:I

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lrn;->a(II)I

    move-result v0

    iput v0, v1, Lnp;->a:I

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 192
    const/16 v0, 0xb

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Lrn;->a(II)I

    move-result v0

    iput v0, v1, Lnp;->l:I

    if-eq v0, v4, :cond_0

    iget v0, v1, Lnp;->a:I

    and-int/2addr v0, v3

    iput v0, v1, Lnp;->a:I

    .line 193
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Lrn;->f(I)Z

    move-result v5

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_6

    .line 194
    invoke-virtual {v2, v6}, Lrn;->f(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    nop

    .line 211
    invoke-virtual {v2, v8}, Lrn;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v7, v1, Lnp;->c:Z

    .line 212
    invoke-virtual {v2, v8, v8}, Lrn;->a(II)I

    move-result v0

    if-eq v0, v8, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, v1, Lnp;->b:Landroid/graphics/Typeface;

    return-void

    .line 214
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, v1, Lnp;->b:Landroid/graphics/Typeface;

    return-void

    .line 215
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, v1, Lnp;->b:Landroid/graphics/Typeface;

    return-void

    .line 212
    :cond_5
    :goto_0
    return-void

    .line 194
    :cond_6
    :goto_1
    const/4 v5, 0x0

    iput-object v5, v1, Lnp;->b:Landroid/graphics/Typeface;

    .line 195
    invoke-virtual {v2, v6}, Lrn;->f(I)Z

    move-result v9

    if-eq v8, v9, :cond_7

    const/16 v6, 0xa

    goto :goto_2

    .line 202
    :cond_7
    nop

    .line 195
    :goto_2
    iget v0, v1, Lnp;->l:I

    iget v9, v1, Lnp;->a:I

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v10

    if-nez v10, :cond_f

    new-instance v10, Ljava/lang/ref/WeakReference;

    iget-object v11, v1, Lnp;->d:Landroid/widget/TextView;

    .line 197
    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lno;

    .line 198
    invoke-direct {v11, v1, v0, v9, v10}, Lno;-><init>(Lnp;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget v15, v1, Lnp;->a:I

    iget-object v0, v2, Lrn;->b:Landroid/content/res/TypedArray;

    .line 199
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    if-nez v13, :cond_8

    goto :goto_3

    .line 208
    :cond_8
    iget-object v0, v2, Lrn;->c:Landroid/util/TypedValue;

    if-nez v0, :cond_9

    new-instance v0, Landroid/util/TypedValue;

    .line 200
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, v2, Lrn;->c:Landroid/util/TypedValue;

    :cond_9
    iget-object v12, v2, Lrn;->a:Landroid/content/Context;

    iget-object v14, v2, Lrn;->c:Landroid/util/TypedValue;

    .line 201
    invoke-virtual {v12}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    const/16 v17, 0x1

    .line 202
    move-object/from16 v16, v11

    invoke-static/range {v12 .. v17}, Lec;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILdv;Z)Landroid/graphics/Typeface;

    move-result-object v5

    .line 199
    :goto_3
    if-eqz v5, :cond_d

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v0, v1, Lnp;->l:I

    if-eq v0, v4, :cond_c

    .line 204
    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget v5, v1, Lnp;->l:I

    iget v9, v1, Lnp;->a:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    goto :goto_4

    .line 208
    :cond_b
    const/4 v9, 0x0

    .line 205
    :goto_4
    invoke-static {v0, v5, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Lnp;->b:Landroid/graphics/Typeface;

    goto :goto_5

    .line 208
    :cond_c
    iput-object v5, v1, Lnp;->b:Landroid/graphics/Typeface;

    .line 205
    :cond_d
    :goto_5
    iget-object v0, v1, Lnp;->b:Landroid/graphics/Typeface;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    .line 208
    :cond_e
    const/4 v0, 0x0

    .line 205
    :goto_6
    iput-boolean v0, v1, Lnp;->c:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 215
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 205
    :cond_f
    :goto_7
    iget-object v0, v1, Lnp;->b:Landroid/graphics/Typeface;

    if-nez v0, :cond_12

    .line 206
    invoke-virtual {v2, v6}, Lrn;->d(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 207
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v2, v1, Lnp;->l:I

    if-eq v2, v4, :cond_11

    .line 209
    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget v2, v1, Lnp;->l:I

    iget v4, v1, Lnp;->a:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    const/4 v7, 0x1

    goto :goto_8

    .line 210
    :cond_10
    nop

    :goto_8
    invoke-static {v0, v2, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Lnp;->b:Landroid/graphics/Typeface;

    return-void

    :cond_11
    iget v2, v1, Lnp;->a:I

    .line 208
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Lnp;->b:Landroid/graphics/Typeface;

    :cond_12
    return-void
.end method

.method private final a(Landroid/graphics/drawable/Drawable;Lrl;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnp;->d:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lmq;->a(Landroid/graphics/drawable/Drawable;Lrl;[I)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    iget-object v0, p0, Lnp;->e:Lrl;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnp;->f:Lrl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnp;->g:Lrl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnp;->h:Lrl;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnp;->d:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    aget-object v3, v0, v2

    iget-object v4, p0, Lnp;->e:Lrl;

    invoke-direct {p0, v3, v4}, Lnp;->a(Landroid/graphics/drawable/Drawable;Lrl;)V

    const/4 v3, 0x1

    .line 5
    aget-object v3, v0, v3

    iget-object v4, p0, Lnp;->f:Lrl;

    invoke-direct {p0, v3, v4}, Lnp;->a(Landroid/graphics/drawable/Drawable;Lrl;)V

    .line 6
    aget-object v3, v0, v1

    iget-object v4, p0, Lnp;->g:Lrl;

    invoke-direct {p0, v3, v4}, Lnp;->a(Landroid/graphics/drawable/Drawable;Lrl;)V

    const/4 v3, 0x3

    .line 7
    aget-object v0, v0, v3

    iget-object v3, p0, Lnp;->h:Lrl;

    invoke-direct {p0, v0, v3}, Lnp;->a(Landroid/graphics/drawable/Drawable;Lrl;)V

    .line 8
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lnp;->i:Lrl;

    if-nez v0, :cond_3

    iget-object v0, p0, Lnp;->j:Lrl;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    return-void

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lnp;->d:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    aget-object v2, v0, v2

    iget-object v3, p0, Lnp;->i:Lrl;

    invoke-direct {p0, v2, v3}, Lnp;->a(Landroid/graphics/drawable/Drawable;Lrl;)V

    .line 11
    aget-object v0, v0, v1

    iget-object v1, p0, Lnp;->j:Lrl;

    invoke-direct {p0, v0, v1}, Lnp;->a(Landroid/graphics/drawable/Drawable;Lrl;)V

    return-void
.end method

.method final a(Landroid/content/Context;I)V
    .locals 3

    .line 175
    sget-object v0, Ljh;->w:[I

    invoke-static {p1, p2, v0}, Lrn;->a(Landroid/content/Context;I[I)Lrn;

    move-result-object p2

    .line 176
    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Lrn;->f(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p2, v0, v2}, Lrn;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lnp;->a(Z)V

    .line 178
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 179
    invoke-virtual {p2, v2}, Lrn;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 180
    invoke-virtual {p2, v2, v0}, Lrn;->d(II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnp;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    :cond_1
    invoke-direct {p0, p1, p2}, Lnp;->a(Landroid/content/Context;Lrn;)V

    .line 183
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Lrn;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p2, p1}, Lrn;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lnp;->d:Landroid/widget/TextView;

    .line 186
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 187
    :cond_2
    invoke-virtual {p2}, Lrn;->a()V

    iget-object p1, p0, Lnp;->b:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lnp;->d:Landroid/widget/TextView;

    iget v0, p0, Lnp;->a:I

    .line 188
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/util/AttributeSet;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v1, v0, Lnp;->d:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 14
    invoke-static {}, Lmq;->b()Lmq;

    move-result-object v11

    .line 15
    sget-object v1, Ljh;->h:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v1, v9, v12}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v13

    iget-object v1, v0, Lnp;->d:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ljh;->h:[I

    iget-object v5, v13, Lrn;->b:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 17
    const/4 v14, -0x1

    invoke-virtual {v13, v12, v14}, Lrn;->f(II)I

    move-result v1

    .line 18
    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v13, v15, v12}, Lrn;->f(II)I

    move-result v2

    .line 20
    invoke-static {v10, v11, v2}, Lnp;->a(Landroid/content/Context;Lmq;I)Lrl;

    move-result-object v2

    iput-object v2, v0, Lnp;->e:Lrl;

    :cond_0
    nop

    .line 21
    const/4 v7, 0x1

    invoke-virtual {v13, v7}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v13, v7, v12}, Lrn;->f(II)I

    move-result v2

    .line 23
    invoke-static {v10, v11, v2}, Lnp;->a(Landroid/content/Context;Lmq;I)Lrl;

    move-result-object v2

    iput-object v2, v0, Lnp;->f:Lrl;

    :cond_1
    nop

    .line 24
    const/4 v6, 0x4

    invoke-virtual {v13, v6}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {v13, v6, v12}, Lrn;->f(II)I

    move-result v2

    .line 26
    invoke-static {v10, v11, v2}, Lnp;->a(Landroid/content/Context;Lmq;I)Lrl;

    move-result-object v2

    iput-object v2, v0, Lnp;->g:Lrl;

    :cond_2
    nop

    .line 27
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    invoke-virtual {v13, v5, v12}, Lrn;->f(II)I

    move-result v2

    .line 29
    invoke-static {v10, v11, v2}, Lnp;->a(Landroid/content/Context;Lmq;I)Lrl;

    move-result-object v2

    iput-object v2, v0, Lnp;->h:Lrl;

    .line 30
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    const/4 v4, 0x5

    invoke-virtual {v13, v4}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    invoke-virtual {v13, v4, v12}, Lrn;->f(II)I

    move-result v2

    .line 33
    invoke-static {v10, v11, v2}, Lnp;->a(Landroid/content/Context;Lmq;I)Lrl;

    move-result-object v2

    iput-object v2, v0, Lnp;->i:Lrl;

    :cond_4
    nop

    .line 34
    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Lrn;->f(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35
    invoke-virtual {v13, v3, v12}, Lrn;->f(II)I

    move-result v2

    .line 36
    invoke-static {v10, v11, v2}, Lnp;->a(Landroid/content/Context;Lmq;I)Lrl;

    move-result-object v2

    iput-object v2, v0, Lnp;->j:Lrl;

    .line 37
    :cond_5
    invoke-virtual {v13}, Lrn;->a()V

    iget-object v2, v0, Lnp;->d:Landroid/widget/TextView;

    .line 38
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    const/16 v13, 0xf

    const/16 v7, 0xe

    if-eq v1, v14, :cond_9

    sget-object v3, Ljh;->w:[I

    .line 39
    invoke-static {v10, v1, v3}, Lrn;->a(Landroid/content/Context;I[I)Lrn;

    move-result-object v1

    if-nez v2, :cond_6

    .line 40
    invoke-virtual {v1, v7}, Lrn;->f(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 41
    invoke-virtual {v1, v7, v12}, Lrn;->a(IZ)Z

    move-result v3

    const/16 v19, 0x1

    goto :goto_0

    .line 67
    :cond_6
    const/4 v3, 0x0

    const/16 v19, 0x0

    .line 42
    :goto_0
    invoke-direct {v0, v10, v1}, Lnp;->a(Landroid/content/Context;Lrn;)V

    .line 43
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    invoke-virtual {v1, v13}, Lrn;->f(I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 45
    invoke-virtual {v1, v13}, Lrn;->d(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 67
    :cond_7
    const/16 v20, 0x0

    .line 46
    :goto_1
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Lrn;->f(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 48
    invoke-virtual {v1, v4}, Lrn;->d(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_2

    .line 67
    :cond_8
    const/16 v22, 0x0

    .line 49
    :goto_2
    invoke-virtual {v1}, Lrn;->a()V

    goto :goto_3

    .line 67
    :cond_9
    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    .line 49
    :goto_3
    sget-object v1, Ljh;->w:[I

    .line 50
    invoke-static {v10, v8, v1, v9, v12}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v1

    if-nez v2, :cond_a

    .line 51
    invoke-virtual {v1, v7}, Lrn;->f(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 52
    invoke-virtual {v1, v7, v12}, Lrn;->a(IZ)Z

    move-result v3

    const/16 v19, 0x1

    goto :goto_4

    .line 67
    :cond_a
    nop

    .line 53
    :goto_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    invoke-virtual {v1, v13}, Lrn;->f(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 55
    invoke-virtual {v1, v13}, Lrn;->d(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_5

    .line 67
    :cond_b
    nop

    .line 56
    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Lrn;->f(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 58
    invoke-virtual {v1, v4}, Lrn;->d(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v4, v22

    goto :goto_6

    .line 67
    :cond_c
    move-object/from16 v4, v22

    .line 59
    :goto_6
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    invoke-virtual {v1, v12}, Lrn;->f(I)Z

    move-result v13

    const/4 v15, 0x0

    if-eqz v13, :cond_d

    .line 61
    invoke-virtual {v1, v12, v14}, Lrn;->d(II)I

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v0, Lnp;->d:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v13, v12, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    :cond_d
    invoke-direct {v0, v10, v1}, Lnp;->a(Landroid/content/Context;Lrn;)V

    .line 64
    invoke-virtual {v1}, Lrn;->a()V

    if-nez v2, :cond_e

    if-eqz v19, :cond_e

    .line 65
    invoke-virtual {v0, v3}, Lnp;->a(Z)V

    :cond_e
    iget-object v1, v0, Lnp;->b:Landroid/graphics/Typeface;

    if-eqz v1, :cond_10

    iget v2, v0, Lnp;->l:I

    if-ne v2, v14, :cond_f

    iget-object v2, v0, Lnp;->d:Landroid/widget/TextView;

    iget v3, v0, Lnp;->a:I

    .line 66
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_7

    .line 114
    :cond_f
    iget-object v2, v0, Lnp;->d:Landroid/widget/TextView;

    .line 67
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    :cond_10
    :goto_7
    if-eqz v4, :cond_11

    iget-object v1, v0, Lnp;->d:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_11
    if-eqz v20, :cond_12

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, v0, Lnp;->d:Landroid/widget/TextView;

    .line 70
    invoke-static/range {v20 .. v20}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_12
    iget-object v13, v0, Lnp;->k:Lnr;

    iget-object v1, v13, Lnr;->h:Landroid/content/Context;

    sget-object v2, Ljh;->i:[I

    .line 71
    invoke-virtual {v1, v8, v2, v9, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    iget-object v1, v13, Lnr;->g:Landroid/widget/TextView;

    .line 72
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ljh;->i:[I

    const/16 v19, 0x0

    move-object/from16 v18, v4

    const/4 v15, 0x5

    move-object/from16 v4, p1

    const/4 v14, 0x2

    move-object/from16 v5, v18

    const/4 v14, 0x4

    move/from16 v6, p2

    const/4 v9, 0x1

    move/from16 v7, v19

    invoke-static/range {v1 .. v7}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 73
    move-object/from16 v1, v18

    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 74
    invoke-virtual {v1, v15, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v13, Lnr;->a:I

    :cond_13
    nop

    .line 75
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_14

    .line 76
    invoke-virtual {v1, v14, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_8

    .line 114
    :cond_14
    const/high16 v2, -0x40800000    # -1.0f

    .line 76
    :goto_8
    nop

    .line 77
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 78
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    goto :goto_9

    .line 114
    :cond_15
    const/high16 v5, -0x40800000    # -1.0f

    .line 78
    :goto_9
    nop

    .line 79
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 80
    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_a

    .line 114
    :cond_16
    const/high16 v4, -0x40800000    # -1.0f

    .line 80
    :goto_a
    nop

    .line 81
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 82
    invoke-virtual {v1, v6, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-lez v7, :cond_1a

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 84
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 85
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    .line 86
    new-array v14, v7, [I

    if-lez v7, :cond_19

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v7, :cond_17

    .line 87
    const/4 v3, -0x1

    invoke-virtual {v6, v15, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    aput v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_b

    .line 88
    :cond_17
    invoke-static {v14}, Lnr;->a([I)[I

    move-result-object v3

    iput-object v3, v13, Lnr;->e:[I

    iget-object v3, v13, Lnr;->e:[I

    .line 89
    array-length v7, v3

    if-lez v7, :cond_18

    const/4 v14, 0x1

    goto :goto_c

    .line 114
    :cond_18
    const/4 v14, 0x0

    .line 89
    :goto_c
    iput-boolean v14, v13, Lnr;->f:Z

    if-eqz v14, :cond_19

    iput v9, v13, Lnr;->a:I

    .line 90
    aget v14, v3, v12

    int-to-float v14, v14

    iput v14, v13, Lnr;->c:F

    const/4 v14, -0x1

    add-int/2addr v7, v14

    .line 91
    aget v3, v3, v7

    int-to-float v3, v3

    iput v3, v13, Lnr;->d:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v13, Lnr;->b:F

    .line 92
    :cond_19
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {v13}, Lnr;->a()Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, v13, Lnr;->a:I

    if-ne v1, v9, :cond_25

    iget-boolean v1, v13, Lnr;->f:Z

    if-nez v1, :cond_21

    iget-object v1, v13, Lnr;->h:Landroid/content/Context;

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v6, v5, v3

    if-nez v6, :cond_1b

    const/high16 v5, 0x41400000    # 12.0f

    .line 96
    const/4 v6, 0x2

    invoke-static {v6, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    goto :goto_d

    .line 95
    :cond_1b
    const/4 v6, 0x2

    .line 96
    :goto_d
    cmpl-float v7, v4, v3

    if-nez v7, :cond_1c

    const/high16 v4, 0x42e00000    # 112.0f

    .line 97
    invoke-static {v6, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    :cond_1c
    cmpl-float v1, v2, v3

    if-nez v1, :cond_1d

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1d
    const-string v1, "px) is less or equal to (0px)"

    const/4 v3, 0x0

    cmpg-float v6, v5, v3

    if-lez v6, :cond_20

    .line 98
    cmpg-float v6, v4, v5

    if-lez v6, :cond_1f

    .line 99
    cmpg-float v3, v2, v3

    if-lez v3, :cond_1e

    .line 100
    iput v9, v13, Lnr;->a:I

    iput v5, v13, Lnr;->c:F

    iput v4, v13, Lnr;->d:F

    iput v2, v13, Lnr;->b:F

    iput-boolean v12, v13, Lnr;->f:Z

    goto :goto_e

    .line 99
    :cond_1e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The auto-size step granularity ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum auto-size text size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "px)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Minimum auto-size text size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_21
    :goto_e
    invoke-virtual {v13}, Lnr;->a()Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, v13, Lnr;->a:I

    if-ne v1, v9, :cond_25

    iget-boolean v1, v13, Lnr;->f:Z

    if-eqz v1, :cond_22

    iget-object v1, v13, Lnr;->e:[I

    .line 102
    array-length v1, v1

    if-nez v1, :cond_25

    :cond_22
    iget v1, v13, Lnr;->d:F

    iget v2, v13, Lnr;->c:F

    sub-float/2addr v1, v2

    iget v2, v13, Lnr;->b:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v9

    .line 104
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_23

    iget v4, v13, Lnr;->c:F

    int-to-float v5, v3

    iget v6, v13, Lnr;->b:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 105
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 106
    :cond_23
    invoke-static {v2}, Lnr;->a([I)[I

    move-result-object v1

    iput-object v1, v13, Lnr;->e:[I

    goto :goto_10

    .line 114
    :cond_24
    iput v12, v13, Lnr;->a:I

    .line 107
    :cond_25
    :goto_10
    sget v1, Lhm;->a:I

    iget-object v1, v0, Lnp;->k:Lnr;

    iget v2, v1, Lnr;->a:I

    if-eqz v2, :cond_27

    iget-object v1, v1, Lnr;->e:[I

    .line 108
    array-length v2, v1

    if-lez v2, :cond_27

    iget-object v2, v0, Lnp;->d:Landroid/widget/TextView;

    .line 109
    invoke-virtual {v2}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_26

    iget-object v1, v0, Lnp;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lnp;->k:Lnr;

    iget v2, v2, Lnr;->c:F

    .line 110
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, v0, Lnp;->k:Lnr;

    iget v3, v3, Lnr;->d:F

    .line 111
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, v0, Lnp;->k:Lnr;

    iget v4, v4, Lnr;->b:F

    .line 112
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 113
    invoke-virtual {v1, v2, v3, v4, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_11

    .line 146
    :cond_26
    iget-object v2, v0, Lnp;->d:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v2, v1, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 113
    :cond_27
    :goto_11
    sget-object v1, Ljh;->i:[I

    .line 115
    invoke-static {v10, v8, v1}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lrn;

    move-result-object v1

    const/16 v2, 0x8

    .line 116
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lrn;->f(II)I

    move-result v2

    if-eq v2, v3, :cond_28

    .line 117
    invoke-virtual {v11, v10, v2}, Lmq;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_12

    .line 146
    :cond_28
    const/4 v2, 0x0

    .line 117
    :goto_12
    nop

    .line 118
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Lrn;->f(II)I

    move-result v4

    if-eq v4, v3, :cond_29

    .line 119
    invoke-virtual {v11, v10, v4}, Lmq;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_13

    .line 146
    :cond_29
    const/4 v4, 0x0

    .line 119
    :goto_13
    const/16 v5, 0x9

    .line 120
    invoke-virtual {v1, v5, v3}, Lrn;->f(II)I

    move-result v5

    if-eq v5, v3, :cond_2a

    .line 121
    invoke-virtual {v11, v10, v5}, Lmq;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_14

    .line 146
    :cond_2a
    const/4 v5, 0x0

    .line 121
    :goto_14
    nop

    .line 122
    const/4 v6, 0x6

    invoke-virtual {v1, v6, v3}, Lrn;->f(II)I

    move-result v6

    if-eq v6, v3, :cond_2b

    .line 123
    invoke-virtual {v11, v10, v6}, Lmq;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_15

    .line 146
    :cond_2b
    const/4 v6, 0x0

    .line 123
    :goto_15
    const/16 v7, 0xa

    .line 124
    invoke-virtual {v1, v7, v3}, Lrn;->f(II)I

    move-result v7

    if-eq v7, v3, :cond_2c

    .line 125
    invoke-virtual {v11, v10, v7}, Lmq;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_16

    .line 146
    :cond_2c
    const/4 v7, 0x0

    .line 125
    :goto_16
    const/4 v8, 0x7

    .line 126
    invoke-virtual {v1, v8, v3}, Lrn;->f(II)I

    move-result v8

    if-eq v8, v3, :cond_2d

    .line 127
    invoke-virtual {v11, v10, v8}, Lmq;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_17

    .line 146
    :cond_2d
    const/4 v3, 0x0

    .line 128
    :goto_17
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-nez v7, :cond_38

    if-eqz v3, :cond_2e

    goto :goto_1b

    .line 130
    :cond_2e
    if-nez v2, :cond_2f

    if-nez v4, :cond_2f

    if-nez v5, :cond_2f

    if-eqz v6, :cond_3d

    .line 135
    :cond_2f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v0, Lnp;->d:Landroid/widget/TextView;

    .line 136
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 137
    aget-object v7, v3, v12

    if-nez v7, :cond_35

    const/4 v8, 0x2

    aget-object v10, v3, v8

    if-eqz v10, :cond_30

    goto :goto_18

    .line 138
    :cond_30
    iget-object v3, v0, Lnp;->d:Landroid/widget/TextView;

    .line 141
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v7, v0, Lnp;->d:Landroid/widget/TextView;

    if-nez v2, :cond_31

    .line 142
    aget-object v2, v3, v12

    :cond_31
    if-nez v4, :cond_32

    .line 143
    aget-object v4, v3, v9

    :cond_32
    if-nez v5, :cond_33

    .line 144
    const/4 v5, 0x2

    aget-object v5, v3, v5

    :cond_33
    if-nez v6, :cond_34

    .line 145
    const/4 v6, 0x3

    aget-object v6, v3, v6

    .line 146
    :cond_34
    invoke-virtual {v7, v2, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 137
    :cond_35
    :goto_18
    iget-object v2, v0, Lnp;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_36

    goto :goto_19

    .line 139
    :cond_36
    nop

    .line 138
    aget-object v4, v3, v9

    .line 137
    :goto_19
    nop

    .line 138
    const/4 v5, 0x2

    aget-object v5, v3, v5

    if-eqz v6, :cond_37

    goto :goto_1a

    .line 140
    :cond_37
    nop

    .line 139
    const/4 v6, 0x3

    aget-object v6, v3, v6

    .line 140
    :goto_1a
    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 128
    :cond_38
    :goto_1b
    iget-object v2, v0, Lnp;->d:Landroid/widget/TextView;

    .line 129
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v5, v0, Lnp;->d:Landroid/widget/TextView;

    if-eqz v7, :cond_39

    goto :goto_1c

    .line 132
    :cond_39
    nop

    .line 130
    aget-object v7, v2, v12

    .line 129
    :goto_1c
    if-nez v4, :cond_3a

    .line 131
    aget-object v4, v2, v9

    :cond_3a
    if-eqz v3, :cond_3b

    goto :goto_1d

    .line 170
    :cond_3b
    nop

    .line 132
    const/4 v3, 0x2

    aget-object v3, v2, v3

    .line 131
    :goto_1d
    if-nez v6, :cond_3c

    .line 133
    const/4 v6, 0x3

    aget-object v6, v2, v6

    .line 134
    :cond_3c
    invoke-virtual {v5, v7, v4, v3, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    :goto_1e
    nop

    .line 147
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 148
    invoke-virtual {v1, v2}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, v0, Lnp;->d:Landroid/widget/TextView;

    .line 149
    invoke-static {v3}, Ley;->a(Ljava/lang/Object;)V

    .line 150
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 151
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    :cond_3e
    nop

    .line 152
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lrn;->f(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 153
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lrn;->a(II)I

    move-result v2

    .line 154
    const/4 v3, 0x0

    invoke-static {v2, v3}, Loh;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iget-object v3, v0, Lnp;->d:Landroid/widget/TextView;

    .line 155
    invoke-static {v3}, Ley;->a(Ljava/lang/Object;)V

    .line 156
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 157
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_3f
    nop

    .line 158
    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lrn;->d(II)I

    move-result v2

    const/16 v4, 0x11

    .line 159
    invoke-virtual {v1, v4, v3}, Lrn;->d(II)I

    move-result v4

    const/16 v5, 0x12

    .line 160
    invoke-virtual {v1, v5, v3}, Lrn;->d(II)I

    move-result v5

    .line 161
    invoke-virtual {v1}, Lrn;->a()V

    if-eq v2, v3, :cond_40

    iget-object v1, v0, Lnp;->d:Landroid/widget/TextView;

    .line 162
    invoke-static {v2}, Ley;->a(I)V

    .line 163
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    :cond_40
    const/4 v1, -0x1

    if-eq v4, v1, :cond_42

    iget-object v1, v0, Lnp;->d:Landroid/widget/TextView;

    .line 165
    invoke-static {v4}, Ley;->a(I)V

    .line 166
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 167
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 168
    invoke-virtual {v1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 169
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_1f

    .line 170
    :cond_41
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 171
    :goto_1f
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v4, v3, :cond_42

    .line 172
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v6

    .line 173
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v2

    .line 172
    invoke-virtual {v1, v3, v6, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_42
    const/4 v1, -0x1

    if-eq v5, v1, :cond_43

    iget-object v1, v0, Lnp;->d:Landroid/widget/TextView;

    .line 174
    invoke-static {v1, v5}, Lhz;->b(Landroid/widget/TextView;I)V

    :cond_43
    return-void
.end method

.method final a(Z)V
    .locals 1

    iget-object v0, p0, Lnp;->d:Landroid/widget/TextView;

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method
