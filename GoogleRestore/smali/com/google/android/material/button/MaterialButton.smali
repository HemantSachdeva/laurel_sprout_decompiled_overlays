.class public Lcom/google/android/material/button/MaterialButton;
.super Lml;
.source "PG"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcia;


# static fields
.field private static final c:[I

.field private static final d:[I


# instance fields
.field private final e:Lcea;

.field private final f:Ljava/util/LinkedHashSet;

.field private g:Landroid/graphics/PorterDuff$Mode;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/button/MaterialButton;->c:[I

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const v0, 0x7f0401c3

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    .line 3
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const v9, 0x7f1203ed

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lckx;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lml;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/LinkedHashSet;

    .line 4
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/button/MaterialButton;->f:Ljava/util/LinkedHashSet;

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->n:Z

    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->o:Z

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 6
    sget-object v3, Lceb;->a:[I

    new-array v6, v10, [I

    .line 7
    const v5, 0x7f1203ed

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcgr;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->m:I

    .line 9
    const/16 v2, 0xf

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 10
    invoke-static {v2, v4}, Lcrw;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/button/MaterialButton;->g:Landroid/graphics/PorterDuff$Mode;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 12
    const/16 v4, 0xe

    invoke-static {v2, v1, v4}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/content/res/ColorStateList;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 14
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_0

    .line 16
    invoke-static {v2, v5}, Lji;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    nop

    .line 17
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    iput-object v2, v0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xb

    .line 18
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/16 v2, 0xd

    .line 19
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->j:I

    .line 20
    invoke-static {v11, v7, v8, v9}, Lchq;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lchp;

    move-result-object v2

    invoke-virtual {v2}, Lchp;->a()Lchq;

    move-result-object v2

    .line 21
    new-instance v5, Lcea;

    invoke-direct {v5, v0, v2}, Lcea;-><init>(Lcom/google/android/material/button/MaterialButton;Lchq;)V

    iput-object v5, v0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    .line 22
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v5, Lcea;->c:I

    .line 23
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Lcea;->d:I

    const/4 v6, 0x3

    .line 24
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Lcea;->e:I

    const/4 v6, 0x4

    .line 25
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Lcea;->f:I

    .line 26
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 27
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcea;->g:I

    int-to-float v6, v6

    iget-object v7, v5, Lcea;->b:Lchq;

    .line 28
    invoke-virtual {v7}, Lchq;->b()Lchp;

    move-result-object v7

    .line 29
    invoke-virtual {v7, v6}, Lchp;->c(F)V

    .line 30
    invoke-virtual {v7, v6}, Lchp;->d(F)V

    .line 31
    invoke-virtual {v7, v6}, Lchp;->b(F)V

    .line 32
    invoke-virtual {v7, v6}, Lchp;->a(F)V

    .line 28
    invoke-virtual {v7}, Lchp;->a()Lchq;

    move-result-object v6

    .line 33
    invoke-virtual {v5, v6}, Lcea;->a(Lchq;)V

    :cond_2
    const/16 v6, 0x14

    .line 34
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcea;->h:I

    const/4 v6, 0x7

    .line 35
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 36
    invoke-static {v6, v7}, Lcrw;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v5, Lcea;->i:Landroid/graphics/PorterDuff$Mode;

    iget-object v6, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    .line 37
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x6

    .line 38
    invoke-static {v6, v1, v7}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcea;->j:Landroid/content/res/ColorStateList;

    iget-object v6, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    .line 39
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x13

    .line 40
    invoke-static {v6, v1, v7}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcea;->k:Landroid/content/res/ColorStateList;

    iget-object v6, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    .line 41
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x10

    .line 42
    invoke-static {v6, v1, v7}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcea;->l:Landroid/content/res/ColorStateList;

    const/4 v6, 0x5

    .line 43
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Lcea;->o:Z

    const/16 v6, 0x9

    .line 44
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Lcea;->q:I

    iget-object v6, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    .line 45
    invoke-static {v6}, Lge;->h(Landroid/view/View;)I

    move-result v6

    iget-object v7, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    .line 46
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v7

    iget-object v8, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    .line 47
    invoke-static {v8}, Lge;->i(Landroid/view/View;)I

    move-result v8

    iget-object v9, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    .line 48
    invoke-virtual {v9}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v9

    .line 49
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 68
    invoke-virtual {v5}, Lcea;->a()V

    goto/16 :goto_0

    .line 72
    :cond_3
    iget-object v11, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    .line 50
    new-instance v12, Lchl;

    iget-object v13, v5, Lcea;->b:Lchq;

    invoke-direct {v12, v13}, Lchl;-><init>(Lchq;)V

    iget-object v13, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    .line 51
    invoke-virtual {v13}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 52
    invoke-virtual {v12, v13}, Lchl;->a(Landroid/content/Context;)V

    iget-object v13, v5, Lcea;->j:Landroid/content/res/ColorStateList;

    .line 53
    invoke-static {v12, v13}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v13, v5, Lcea;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v13, :cond_4

    .line 54
    invoke-static {v12, v13}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_4
    iget v13, v5, Lcea;->h:I

    int-to-float v13, v13

    iget-object v14, v5, Lcea;->k:Landroid/content/res/ColorStateList;

    .line 55
    invoke-virtual {v12, v13, v14}, Lchl;->a(FLandroid/content/res/ColorStateList;)V

    new-instance v13, Lchl;

    iget-object v14, v5, Lcea;->b:Lchq;

    .line 56
    invoke-direct {v13, v14}, Lchl;-><init>(Lchq;)V

    .line 57
    invoke-virtual {v13, v10}, Lchl;->setTint(I)V

    iget v14, v5, Lcea;->h:I

    int-to-float v14, v14

    .line 58
    invoke-virtual {v13, v14, v10}, Lchl;->a(FI)V

    new-instance v14, Lchl;

    iget-object v15, v5, Lcea;->b:Lchq;

    .line 59
    invoke-direct {v14, v15}, Lchl;-><init>(Lchq;)V

    iput-object v14, v5, Lcea;->m:Landroid/graphics/drawable/Drawable;

    iget-object v14, v5, Lcea;->m:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-static {v14, v3}, Ley;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 61
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v14, v5, Lcea;->l:Landroid/content/res/ColorStateList;

    .line 62
    invoke-static {v14}, Lchc;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v14

    new-instance v15, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v13, v2, v10

    aput-object v12, v2, v4

    invoke-direct {v15, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 63
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget v12, v5, Lcea;->c:I

    iget v13, v5, Lcea;->e:I

    iget v4, v5, Lcea;->d:I

    iget v10, v5, Lcea;->f:I

    move-object/from16 v16, v15

    move-object v15, v2

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v4

    move/from16 v20, v10

    invoke-direct/range {v15 .. v20}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v4, v5, Lcea;->m:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-direct {v3, v14, v2, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v5, Lcea;->p:Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, v5, Lcea;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 65
    invoke-super {v11, v2}, Lml;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {v5}, Lcea;->b()Lchl;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v3, v5, Lcea;->q:I

    int-to-float v3, v3

    .line 67
    invoke-virtual {v2, v3}, Lchl;->c(F)V

    .line 68
    :cond_5
    :goto_0
    iget-object v2, v5, Lcea;->a:Lcom/google/android/material/button/MaterialButton;

    iget v3, v5, Lcea;->c:I

    add-int/2addr v6, v3

    iget v3, v5, Lcea;->e:I

    add-int/2addr v7, v3

    iget v3, v5, Lcea;->d:I

    add-int/2addr v8, v3

    iget v3, v5, Lcea;->f:I

    add-int/2addr v9, v3

    .line 69
    invoke-static {v2, v6, v7, v8, v9}, Lge;->a(Landroid/view/View;IIII)V

    .line 70
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget v1, v0, Lcom/google/android/material/button/MaterialButton;->m:I

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    iget-object v1, v0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    .line 72
    :cond_6
    const/4 v10, 0x0

    :goto_1
    invoke-direct {v0, v10}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-class v0, Landroid/widget/Button;

    goto :goto_0

    .line 73
    :cond_0
    const-class v0, Landroid/widget/CompoundButton;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a(II)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->f()Z

    move-result p1

    if-eqz p1, :cond_c

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    .line 166
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void

    :cond_2
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->j:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 168
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    invoke-interface {v3, v2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    .line 172
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 173
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 174
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p2, v0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    sub-int/2addr p2, p1

    .line 176
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    if-eq p1, p2, :cond_c

    iput p2, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    .line 177
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void

    .line 154
    :cond_5
    :goto_0
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    goto :goto_4

    .line 155
    :cond_6
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->j:I

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    .line 156
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 157
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 158
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 160
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    invoke-interface {v4, v3, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    :cond_8
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p1, v2

    .line 162
    invoke-static {p0}, Lge;->i(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    sub-int/2addr p1, p2

    .line 163
    invoke-static {p0}, Lge;->h(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 164
    invoke-static {p0}, Lge;->g(Landroid/view/View;)I

    move-result p2

    if-eq p2, v0, :cond_9

    const/4 p2, 0x0

    goto :goto_1

    .line 165
    :cond_9
    const/4 p2, 0x1

    .line 164
    :goto_1
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    const/4 v0, 0x0

    goto :goto_2

    .line 165
    :cond_a
    nop

    .line 164
    :goto_2
    if-eq p2, v0, :cond_b

    neg-int p1, p1

    goto :goto_3

    .line 165
    :cond_b
    nop

    .line 164
    :goto_3
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-eq p2, p1, :cond_c

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    .line 165
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_c
    return-void

    .line 154
    :cond_d
    :goto_4
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    .line 155
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void

    .line 154
    :cond_e
    :goto_5
    return-void
.end method

.method private final a(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->h:Landroid/content/res/ColorStateList;

    .line 143
    invoke-static {v0, v1}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->g:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-static {v1, v0}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->j:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_1
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->j:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    add-int/2addr v0, v3

    add-int/2addr v1, v4

    .line 147
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz p1, :cond_4

    .line 148
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->c()V

    return-void

    .line 149
    :cond_4
    invoke-static {p0}, Lhz;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 150
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 151
    aget-object v1, p1, v1

    const/4 v2, 0x2

    .line 152
    aget-object p1, p1, v2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-ne v0, v2, :cond_7

    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->f()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_8

    .line 153
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->c()V

    :cond_8
    return-void
.end method

.method private final c()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-static {p0, v0, v1, v1, v1}, Lhz;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-static {p0, v1, v1, v0, v1}, Lhz;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-static {p0, v1, v0, v1, v1}, Lhz;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private final d()Z
    .locals 3

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private final e()Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final f()Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcea;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    iget-object v1, v0, Lcea;->j:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_2

    iput-object p1, v0, Lcea;->j:Landroid/content/res/ColorStateList;

    .line 135
    invoke-virtual {v0}, Lcea;->b()Lchl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {v0}, Lcea;->b()Lchl;

    move-result-object p1

    iget-object v0, v0, Lcea;->j:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lml;->b:Lmk;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lmk;->a:Lrl;

    if-nez v1, :cond_1

    new-instance v1, Lrl;

    invoke-direct {v1}, Lrl;-><init>()V

    iput-object v1, v0, Lmk;->a:Lrl;

    :cond_1
    iget-object v1, v0, Lmk;->a:Lrl;

    iput-object p1, v1, Lrl;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v1, Lrl;->d:Z

    .line 134
    invoke-virtual {v0}, Lmk;->a()V

    return-void

    .line 136
    :cond_2
    return-void
.end method

.method public final a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    iget-object v1, v0, Lcea;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_2

    iput-object p1, v0, Lcea;->i:Landroid/graphics/PorterDuff$Mode;

    .line 138
    invoke-virtual {v0}, Lcea;->b()Lchl;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcea;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {v0}, Lcea;->b()Lchl;

    move-result-object p1

    iget-object v0, v0, Lcea;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lml;->b:Lmk;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lmk;->a:Lrl;

    if-nez v1, :cond_1

    new-instance v1, Lrl;

    invoke-direct {v1}, Lrl;-><init>()V

    iput-object v1, v0, Lmk;->a:Lrl;

    :cond_1
    iget-object v1, v0, Lmk;->a:Lrl;

    iput-object p1, v1, Lrl;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v1, Lrl;->c:Z

    .line 137
    invoke-virtual {v0}, Lmk;->a()V

    return-void

    .line 139
    :cond_2
    return-void
.end method

.method public final a(Lchq;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    .line 132
    invoke-virtual {v0, p1}, Lcea;->a(Lchq;)V

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 133
    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcea;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    iget-object v1, v0, Lcea;->j:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lml;->b:Lmk;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lmk;->a:Lrl;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lrl;->a:Landroid/content/res/ColorStateList;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    iget-object v1, v0, Lcea;->i:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lml;->b:Lmk;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lmk;->a:Lrl;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lrl;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 74
    invoke-super {p0}, Lml;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    .line 75
    invoke-virtual {v0}, Lcea;->b()Lchl;

    move-result-object v0

    iget-object v1, v0, Lchl;->a:Lchk;

    .line 76
    iget-object v1, v1, Lchk;->b:Lcfy;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcfy;->a:Z

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    .line 78
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 79
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lge;->n(Landroid/view/View;)F

    move-result v3

    add-float/2addr v2, v3

    .line 80
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lchl;->a:Lchk;

    .line 81
    iget v3, v1, Lchk;->n:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    iput v2, v1, Lchk;->n:F

    .line 82
    invoke-virtual {v0}, Lchl;->d()V

    :cond_1
    return-void
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 83
    invoke-super {p0, p1}, Lml;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->c:[I

    .line 84
    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->d:[I

    .line 85
    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lml;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 87
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lml;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 90
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 94
    invoke-super/range {p0 .. p5}, Lml;->onLayout(ZIIII)V

    .line 95
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 96
    instance-of v0, p1, Lcdz;

    if-nez v0, :cond_0

    .line 97
    invoke-super {p0, p1}, Lml;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 98
    :cond_0
    check-cast p1, Lcdz;

    iget-object v0, p1, Lvl;->d:Landroid/os/Parcelable;

    .line 99
    invoke-super {p0, v0}, Lml;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 100
    iget-boolean p1, p1, Lcdz;->a:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 101
    invoke-super {p0}, Lml;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 102
    new-instance v1, Lcdz;

    invoke-direct {v1, v0}, Lcdz;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    iput-boolean v0, v1, Lcdz;->a:Z

    return-object v1
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lml;->onSizeChanged(IIII)V

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->a(II)V

    return-void
.end method

.method protected final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Lml;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->a(II)V

    return-void
.end method

.method public final performClick()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    .line 108
    invoke-super {p0}, Lml;->performClick()Z

    move-result v0

    return v0
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lml;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    .line 113
    invoke-virtual {v0}, Lcea;->b()Lchl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0}, Lcea;->b()Lchl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lchl;->setTint(I)V

    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-super {p0, p1}, Lml;->setBackgroundColor(I)V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 117
    const-string v0, "MaterialButton"

    const-string v1, "Do not set the background; MaterialButton manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    .line 118
    invoke-virtual {v0}, Lcea;->a()V

    .line 119
    invoke-super {p0, p1}, Lml;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .line 121
    :cond_1
    invoke-super {p0, p1}, Lml;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lji;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lml;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    .line 127
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->f:Ljava/util/LinkedHashSet;

    .line 128
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdx;

    .line 129
    invoke-interface {v0}, Lcdx;->a()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    :cond_2
    return-void
.end method

.method public final setElevation(F)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lml;->setElevation(F)V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Lcea;

    .line 131
    invoke-virtual {v0}, Lcea;->b()Lchl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lchl;->c(F)V

    :cond_0
    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Z

    xor-int/lit8 v0, v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method
