.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "PG"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Landroid/content/res/ColorStateList;

.field private E:Landroid/content/res/ColorStateList;

.field private F:Z

.field private G:Z

.field private final H:Ljava/util/ArrayList;

.field private final I:[I

.field private J:Lrw;

.field private final K:Ljava/lang/Runnable;

.field private final L:Laqe;

.field public a:Landroid/support/v7/widget/ActionMenuView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageButton;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/widget/ImageButton;

.field public h:Landroid/view/View;

.field public i:Landroid/content/Context;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lre;

.field public o:Ljava/lang/CharSequence;

.field public p:Ljava/lang/CharSequence;

.field public final q:Ljava/util/ArrayList;

.field public r:Lmc;

.field public s:Lrq;

.field public t:Z

.field private u:Landroid/widget/ImageView;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const v0, 0x7f040305

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->C:I

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->I:[I

    new-instance v1, Laqe;

    invoke-direct {v1}, Laqe;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->L:Laqe;

    new-instance v1, Lro;

    .line 6
    invoke-direct {v1, p0}, Lro;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->K:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ljh;->x:[I

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, p3, v3}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v1

    sget-object v6, Ljh;->x:[I

    iget-object v8, v1, Lrn;->b:Landroid/content/res/TypedArray;

    .line 8
    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    invoke-static/range {v4 .. v10}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 9
    const/16 p1, 0x1c

    invoke-virtual {v1, p1, v3}, Lrn;->f(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    .line 10
    const/16 p1, 0x13

    invoke-virtual {v1, p1, v3}, Lrn;->f(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->l:I

    iget p1, p0, Landroid/support/v7/widget/Toolbar;->C:I

    .line 11
    invoke-virtual {v1, v3, p1}, Lrn;->b(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->C:I

    .line 12
    const/16 p1, 0x30

    invoke-virtual {v1, v0, p1}, Lrn;->b(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    .line 13
    const/16 p1, 0x16

    invoke-virtual {v1, p1, v3}, Lrn;->c(II)I

    move-result p1

    .line 14
    const/16 p2, 0x1b

    invoke-virtual {v1, p2}, Lrn;->f(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 15
    invoke-virtual {v1, p2, p1}, Lrn;->c(II)I

    move-result p1

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->z:I

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->y:I

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->x:I

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->w:I

    const/16 p1, 0x19

    .line 16
    const/4 p2, -0x1

    invoke-virtual {v1, p1, p2}, Lrn;->c(II)I

    move-result p1

    if-ltz p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->w:I

    :cond_1
    const/16 p1, 0x18

    .line 17
    invoke-virtual {v1, p1, p2}, Lrn;->c(II)I

    move-result p1

    if-ltz p1, :cond_2

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->x:I

    :cond_2
    const/16 p1, 0x1a

    .line 18
    invoke-virtual {v1, p1, p2}, Lrn;->c(II)I

    move-result p1

    if-ltz p1, :cond_3

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->y:I

    :cond_3
    const/16 p1, 0x17

    .line 19
    invoke-virtual {v1, p1, p2}, Lrn;->c(II)I

    move-result p1

    if-ltz p1, :cond_4

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->z:I

    :cond_4
    const/16 p1, 0xd

    .line 20
    invoke-virtual {v1, p1, p2}, Lrn;->d(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->v:I

    const/16 p1, 0x9

    .line 21
    const/high16 p2, -0x80000000

    invoke-virtual {v1, p1, p2}, Lrn;->c(II)I

    move-result p1

    const/4 p3, 0x5

    .line 22
    invoke-virtual {v1, p3, p2}, Lrn;->c(II)I

    move-result p3

    const/4 v0, 0x7

    .line 23
    invoke-virtual {v1, v0, v3}, Lrn;->d(II)I

    move-result v0

    const/16 v2, 0x8

    .line 24
    invoke-virtual {v1, v2, v3}, Lrn;->d(II)I

    move-result v2

    .line 25
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->n:Lre;

    iput-boolean v3, v4, Lre;->h:Z

    if-eq v0, p2, :cond_5

    iput v0, v4, Lre;->e:I

    iput v0, v4, Lre;->a:I

    :cond_5
    if-eq v2, p2, :cond_6

    iput v2, v4, Lre;->f:I

    iput v2, v4, Lre;->b:I

    :cond_6
    if-ne p1, p2, :cond_7

    if-eq p3, p2, :cond_8

    .line 26
    :cond_7
    invoke-virtual {v4, p1, p3}, Lre;->a(II)V

    :cond_8
    const/16 p1, 0xa

    .line 27
    invoke-virtual {v1, p1, p2}, Lrn;->c(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->A:I

    const/4 p1, 0x6

    .line 28
    invoke-virtual {v1, p1, p2}, Lrn;->c(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->B:I

    const/4 p1, 0x4

    .line 29
    invoke-virtual {v1, p1}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x3

    .line 30
    invoke-virtual {v1, p1}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->f:Ljava/lang/CharSequence;

    const/16 p1, 0x15

    .line 31
    invoke-virtual {v1, p1}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 33
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    :cond_9
    const/16 p1, 0x12

    .line 34
    invoke-virtual {v1, p1}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 36
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 37
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    const/16 p1, 0x11

    .line 38
    invoke-virtual {v1, p1, v3}, Lrn;->f(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(I)V

    const/16 p1, 0x10

    .line 39
    invoke-virtual {v1, p1}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 40
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    const/16 p1, 0xf

    .line 41
    invoke-virtual {v1, p1}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 43
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    :cond_c
    const/16 p1, 0xb

    .line 44
    invoke-virtual {v1, p1}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 45
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    const/16 p1, 0xc

    .line 46
    invoke-virtual {v1, p1}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 49
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->o()V

    :cond_e
    iget-object p2, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    if-eqz p2, :cond_f

    .line 50
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_f
    nop

    .line 51
    const/16 p1, 0x1d

    invoke-virtual {v1, p1}, Lrn;->f(I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 52
    invoke-virtual {v1, p1}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_10

    .line 53
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_10
    nop

    .line 54
    const/16 p1, 0x14

    invoke-virtual {v1, p1}, Lrn;->f(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 55
    invoke-virtual {v1, p1}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->E:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_11

    .line 56
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    nop

    .line 57
    const/16 p1, 0xe

    invoke-virtual {v1, p1}, Lrn;->f(I)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 58
    invoke-virtual {v1, p1, v3}, Lrn;->f(II)I

    move-result p1

    .line 59
    new-instance p2, Ljv;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Ljv;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->f()V

    iget-object p3, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, p3, Landroid/support/v7/widget/ActionMenuView;->a:Lkp;

    if-nez v0, :cond_13

    .line 61
    invoke-virtual {p3}, Landroid/support/v7/widget/ActionMenuView;->a()Landroid/view/Menu;

    move-result-object p3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    if-nez v0, :cond_12

    new-instance v0, Lrq;

    .line 62
    invoke-direct {v0, p0}, Lrq;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->c:Lmc;

    .line 63
    invoke-virtual {v0}, Lmc;->g()V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    .line 61
    check-cast p3, Lkp;

    .line 64
    invoke-virtual {p3, v0, v2}, Lkp;->a(Lld;Landroid/content/Context;)V

    :cond_13
    iget-object p3, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 65
    invoke-virtual {p3}, Landroid/support/v7/widget/ActionMenuView;->a()Landroid/view/Menu;

    move-result-object p3

    .line 66
    invoke-virtual {p2, p1, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 67
    :cond_14
    invoke-virtual {v1}, Lrn;->a()V

    return-void
.end method

.method private final a(Landroid/view/View;I)I
    .locals 6

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrr;

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 118
    :cond_0
    const/4 p2, 0x0

    .line 116
    :goto_0
    iget v2, v0, Lrr;->a:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x10

    const/16 v4, 0x50

    const/16 v5, 0x30

    if-eq v2, v3, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->C:I

    and-int/lit8 v2, v2, 0x70

    :cond_1
    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    .line 119
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p2

    .line 120
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    .line 121
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v3

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    .line 122
    iget v5, v0, Lrr;->topMargin:I

    if-ge v4, v5, :cond_2

    .line 123
    iget v4, v0, Lrr;->topMargin:I

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    .line 124
    iget p1, v0, Lrr;->bottomMargin:I

    if-ge v3, p1, :cond_3

    .line 125
    iget p1, v0, Lrr;->bottomMargin:I

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    :cond_3
    nop

    .line 123
    :goto_1
    add-int/2addr p2, v4

    return p2

    .line 117
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Lrr;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    .line 118
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method private final a(Landroid/view/View;IIII[I)I
    .locals 7

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 158
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 159
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 160
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    .line 162
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    .line 163
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 164
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 165
    invoke-static {p2, p6, p3}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result p6

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p6

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 167
    invoke-static {p4, p3, p5}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p3

    .line 168
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v5

    return p1
.end method

.method private final a(Landroid/view/View;I[II)I
    .locals 4

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrr;

    .line 142
    iget v1, v0, Lrr;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 143
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    .line 144
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 145
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p3

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int v1, p2, p4

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 148
    iget p1, v0, Lrr;->rightMargin:I

    add-int/2addr p4, p1

    add-int/2addr p2, p4

    return p2
.end method

.method protected static final a(Landroid/view/ViewGroup$LayoutParams;)Lrr;
    .locals 1

    .line 105
    instance-of v0, p0, Lrr;

    if-eqz v0, :cond_0

    new-instance v0, Lrr;

    .line 106
    check-cast p0, Lrr;

    invoke-direct {v0, p0}, Lrr;-><init>(Lrr;)V

    return-object v0

    .line 107
    :cond_0
    instance-of v0, p0, Lhq;

    if-eqz v0, :cond_1

    new-instance v0, Lrr;

    .line 108
    check-cast p0, Lhq;

    invoke-direct {v0, p0}, Lrr;-><init>(Lhq;)V

    return-object v0

    .line 109
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Lrr;

    .line 110
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Lrr;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_2
    new-instance v0, Lrr;

    .line 111
    invoke-direct {v0, p0}, Lrr;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final a(Landroid/view/View;IIII)V
    .locals 3

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 172
    invoke-static {p2, v1, p3}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    .line 173
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 174
    invoke-static {p4, p3, v0}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p3

    .line 175
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p4, v0, :cond_1

    if-ltz p5, :cond_1

    if-eqz p4, :cond_0

    .line 176
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto :goto_0

    .line 178
    :cond_0
    nop

    .line 176
    :goto_0
    nop

    .line 177
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 178
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private final a(Landroid/view/View;Z)V
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Landroid/support/v7/widget/Toolbar;->n()Lrr;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Lrr;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    check-cast v0, Lrr;

    .line 84
    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lrr;->b:I

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 88
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final a(Ljava/util/List;I)V
    .locals 5

    .line 68
    invoke-static {p0}, Lge;->g(Landroid/view/View;)I

    move-result v0

    .line 69
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 70
    invoke-static {p0}, Lge;->g(Landroid/view/View;)I

    move-result v2

    .line 71
    invoke-static {p2, v2}, Ley;->a(II)I

    move-result p2

    .line 72
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 78
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lrr;

    .line 80
    iget v3, v2, Lrr;->b:I

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, v2, Lrr;->a:I

    .line 81
    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 73
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lrr;

    .line 75
    iget v4, v3, Lrr;->b:I

    if-nez v4, :cond_2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v3, v3, Lrr;->a:I

    .line 76
    invoke-direct {p0, v3}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 77
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_3
    return-void
.end method

.method private final a(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final b(I)I
    .locals 4

    .line 112
    invoke-static {p0}, Lge;->g(Landroid/view/View;)I

    move-result v0

    .line 113
    invoke-static {p1, v0}, Ley;->a(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    return p1
.end method

.method private final b(Landroid/view/View;I[II)I
    .locals 5

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrr;

    .line 150
    iget v1, v0, Lrr;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 151
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    .line 152
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 153
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p3

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v1, p2, p4

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 156
    iget p1, v0, Lrr;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    return p2
.end method

.method private final b(Landroid/view/View;)Z
    .locals 1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static final c(Landroid/view/View;)I
    .locals 2

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    invoke-static {p0}, Lhz;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static final d(Landroid/view/View;)I
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static final n()Lrr;
    .locals 1

    new-instance v0, Lrr;

    .line 104
    invoke-direct {v0}, Lrr;-><init>()V

    return-object v0
.end method

.method private final o()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Lmu;

    .line 94
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 95
    invoke-direct {v0, v1, v2}, Lmu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/Toolbar;->j:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->j:I

    if-nez p1, :cond_0

    .line 391
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 392
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 374
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->o()V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 375
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 376
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 377
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 378
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 379
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 3

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 407
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 408
    new-instance v1, Lnq;

    invoke-direct {v1, v0}, Lnq;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 409
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 410
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 411
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 412
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 413
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 414
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 415
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 416
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 417
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 414
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 418
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->o:Ljava/lang/CharSequence;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->c:Lmc;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lmc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->k()V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 385
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    .line 386
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 387
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 388
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 386
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 3

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 394
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    new-instance v1, Lnq;

    invoke-direct {v1, v0}, Lnq;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 396
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 397
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->l:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 398
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->E:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 399
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 400
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 401
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 402
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 403
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 404
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 401
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 405
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->p:Ljava/lang/CharSequence;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->c:Lmc;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lmc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, v0, Lrq;->b:Lks;

    .line 0
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Lks;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 1

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->k()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lrr;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ActionMenuView;

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->j:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->L:Laqe;

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuView;->d:Laqe;

    .line 98
    invoke-static {}, Landroid/support/v7/widget/Toolbar;->n()Lrr;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800005

    or-int/2addr v1, v2

    iput v1, v0, Lrr;->a:I

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 99
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->n:Lre;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lre;->g:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lre;->b:I

    goto :goto_0

    :cond_0
    iget v0, v0, Lre;->a:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {}, Landroid/support/v7/widget/Toolbar;->n()Lrr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lrr;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lrr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {p1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Lrr;

    move-result-object p1

    return-object p1
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->n:Lre;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lre;->g:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lre;->a:I

    goto :goto_0

    :cond_0
    iget v0, v0, Lre;->b:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final i()I
    .locals 3

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->A:I

    const/4 v2, 0x0

    .line 129
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final j()I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->a:Lkp;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lkp;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->h()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->B:I

    const/4 v2, 0x0

    .line 127
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->h()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Lms;

    .line 101
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f040304

    invoke-direct {v0, v1, v2, v3}, Lms;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 102
    invoke-static {}, Landroid/support/v7/widget/Toolbar;->n()Lrr;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Lrr;->a:I

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final l()Lnw;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->J:Lrw;

    if-nez v0, :cond_0

    new-instance v0, Lrw;

    .line 138
    invoke-direct {v0, p0}, Lrw;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->J:Lrw;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->J:Lrw;

    return-object v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->n:Lre;

    if-nez v0, :cond_0

    new-instance v0, Lre;

    .line 93
    invoke-direct {v0}, Lre;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->n:Lre;

    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Ljava/lang/Runnable;

    .line 180
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->G:Z

    const/16 v0, 0x9

    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->G:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 182
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_2

    iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->G:Z

    goto :goto_0

    :cond_1
    move v2, v0

    :cond_2
    :goto_0
    const/16 p1, 0xa

    if-eq v2, p1, :cond_3

    const/4 p1, 0x3

    if-ne v2, p1, :cond_4

    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->G:Z

    :cond_4
    return v4
.end method

.method protected final onLayout(ZIIII)V
    .locals 18

    .line 183
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lge;->g(Landroid/view/View;)I

    move-result v1

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v2

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v3

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v4

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v5

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v6

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v7

    sub-int v8, v2, v5

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->I:[I

    .line 190
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    aput v11, v9, v11

    .line 191
    invoke-static/range {p0 .. p0}, Lge;->k(Landroid/view/View;)I

    move-result v12

    if-ltz v12, :cond_0

    sub-int v13, p5, p3

    .line 192
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_0

    .line 195
    :cond_0
    const/4 v12, 0x0

    .line 192
    :goto_0
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 193
    invoke-direct {v0, v13}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-ne v1, v10, :cond_1

    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 194
    invoke-direct {v0, v13, v8, v9, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v4

    goto :goto_2

    .line 198
    :cond_1
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 195
    invoke-direct {v0, v13, v4, v9, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_1

    :cond_2
    move v13, v4

    :goto_1
    move v14, v8

    .line 194
    :goto_2
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    .line 196
    invoke-direct {v0, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-ne v1, v10, :cond_3

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    .line 197
    invoke-direct {v0, v15, v14, v9, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_3

    .line 201
    :cond_3
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    .line 198
    invoke-direct {v0, v15, v13, v9, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_3

    :cond_4
    nop

    .line 197
    :goto_3
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 199
    invoke-direct {v0, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-ne v1, v10, :cond_5

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 200
    invoke-direct {v0, v15, v13, v9, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_4

    .line 204
    :cond_5
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 201
    invoke-direct {v0, v15, v14, v9, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    :cond_6
    nop

    .line 202
    :goto_4
    invoke-static/range {p0 .. p0}, Lge;->g(Landroid/view/View;)I

    move-result v15

    if-ne v15, v10, :cond_7

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->j()I

    move-result v15

    goto :goto_5

    .line 204
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->i()I

    move-result v15

    .line 205
    :goto_5
    invoke-static/range {p0 .. p0}, Lge;->g(Landroid/view/View;)I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->i()I

    move-result v11

    goto :goto_6

    .line 207
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->j()I

    move-result v11

    .line 206
    :goto_6
    sub-int v10, v15, v13

    .line 208
    move/from16 p4, v5

    const/4 v5, 0x0

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v9, v5

    sub-int v10, v8, v14

    sub-int v10, v11, v10

    .line 209
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v5, 0x1

    aput v10, v9, v5

    .line 210
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v8, v11

    .line 211
    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    .line 212
    invoke-direct {v0, v11}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_a

    if-ne v1, v5, :cond_9

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    .line 213
    invoke-direct {v0, v5, v8, v9, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v8

    goto :goto_7

    .line 217
    :cond_9
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    .line 214
    invoke-direct {v0, v5, v10, v9, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v10

    .line 213
    :cond_a
    :goto_7
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 215
    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    if-ne v1, v5, :cond_b

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 216
    invoke-direct {v0, v5, v8, v9, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v8

    goto :goto_8

    .line 229
    :cond_b
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 217
    invoke-direct {v0, v5, v10, v9, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_8

    :cond_c
    nop

    .line 216
    :goto_8
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 218
    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v5

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 219
    invoke-direct {v0, v11}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v11

    if-eqz v5, :cond_d

    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 220
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lrr;

    .line 221
    iget v14, v13, Lrr;->topMargin:I

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v14, v15

    iget v13, v13, Lrr;->bottomMargin:I

    add-int/2addr v13, v14

    goto :goto_9

    .line 229
    :cond_d
    const/4 v13, 0x0

    .line 221
    :goto_9
    if-eqz v11, :cond_e

    iget-object v14, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 222
    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lrr;

    .line 223
    iget v15, v14, Lrr;->topMargin:I

    move/from16 v16, v2

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v15, v2

    iget v2, v14, Lrr;->bottomMargin:I

    add-int/2addr v15, v2

    add-int/2addr v13, v15

    goto :goto_a

    .line 221
    :cond_e
    move/from16 v16, v2

    .line 223
    :goto_a
    if-nez v5, :cond_10

    if-eqz v11, :cond_f

    goto :goto_b

    .line 229
    :cond_f
    move/from16 v17, v4

    move/from16 p3, v12

    goto/16 :goto_19

    .line 223
    :cond_10
    :goto_b
    if-eqz v5, :cond_11

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    goto :goto_c

    .line 229
    :cond_11
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 223
    :goto_c
    if-eqz v11, :cond_12

    iget-object v14, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    goto :goto_d

    .line 229
    :cond_12
    iget-object v14, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 224
    :goto_d
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lrr;

    .line 225
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lrr;

    if-eqz v5, :cond_14

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 226
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_13

    goto :goto_e

    .line 229
    :cond_13
    const/4 v15, 0x1

    goto :goto_f

    .line 226
    :cond_14
    :goto_e
    if-eqz v11, :cond_15

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 227
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_15

    const/4 v15, 0x1

    goto :goto_f

    .line 229
    :cond_15
    const/4 v15, 0x0

    .line 227
    :goto_f
    move/from16 v17, v4

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->C:I

    and-int/lit8 v4, v4, 0x70

    move/from16 p3, v12

    const/16 v12, 0x30

    if-eq v4, v12, :cond_19

    const/16 v12, 0x50

    if-eq v4, v12, :cond_18

    sub-int v4, v3, v6

    sub-int/2addr v4, v7

    sub-int/2addr v4, v13

    div-int/lit8 v4, v4, 0x2

    .line 230
    iget v12, v2, Lrr;->topMargin:I

    move/from16 p5, v10

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->y:I

    add-int/2addr v12, v10

    if-ge v4, v12, :cond_16

    .line 231
    iget v2, v2, Lrr;->topMargin:I

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->y:I

    add-int v4, v2, v3

    goto :goto_10

    .line 263
    :cond_16
    sub-int/2addr v3, v7

    sub-int/2addr v3, v13

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    .line 232
    iget v2, v2, Lrr;->bottomMargin:I

    iget v7, v0, Landroid/support/v7/widget/Toolbar;->z:I

    add-int/2addr v2, v7

    if-ge v3, v2, :cond_17

    .line 233
    iget v2, v14, Lrr;->bottomMargin:I

    iget v7, v0, Landroid/support/v7/widget/Toolbar;->z:I

    add-int/2addr v2, v7

    sub-int/2addr v2, v3

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_10

    :cond_17
    nop

    .line 231
    :goto_10
    add-int/2addr v6, v4

    goto :goto_11

    .line 233
    :cond_18
    move/from16 p5, v10

    sub-int/2addr v3, v7

    .line 228
    iget v2, v14, Lrr;->bottomMargin:I

    sub-int/2addr v3, v2

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->z:I

    sub-int/2addr v3, v2

    sub-int v6, v3, v13

    goto :goto_11

    .line 229
    :cond_19
    move/from16 p5, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v3

    iget v2, v2, Lrr;->topMargin:I

    add-int/2addr v3, v2

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->y:I

    add-int v6, v3, v2

    .line 231
    :goto_11
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    if-eqz v15, :cond_1a

    iget v1, v0, Landroid/support/v7/widget/Toolbar;->w:I

    goto :goto_12

    .line 285
    :cond_1a
    const/4 v1, 0x0

    .line 231
    :goto_12
    nop

    .line 234
    aget v3, v9, v2

    sub-int/2addr v1, v3

    .line 235
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v8, v4

    neg-int v1, v1

    .line 236
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v9, v2

    if-eqz v5, :cond_1b

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 237
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lrr;

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 238
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v8, v2

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 239
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v6

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 240
    invoke-virtual {v4, v2, v6, v8, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->x:I

    sub-int/2addr v2, v4

    .line 241
    iget v1, v1, Lrr;->bottomMargin:I

    add-int v6, v3, v1

    goto :goto_13

    .line 285
    :cond_1b
    move v2, v8

    .line 241
    :goto_13
    if-eqz v11, :cond_1c

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 242
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lrr;

    .line 243
    iget v3, v1, Lrr;->topMargin:I

    add-int/2addr v6, v3

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 244
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 245
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    sub-int v3, v8, v3

    add-int/2addr v4, v6

    .line 246
    invoke-virtual {v5, v3, v6, v8, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->x:I

    sub-int v3, v8, v3

    .line 247
    iget v1, v1, Lrr;->bottomMargin:I

    goto :goto_14

    .line 285
    :cond_1c
    move v3, v8

    .line 247
    :goto_14
    if-eqz v15, :cond_1d

    .line 248
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v8, v1

    goto :goto_15

    .line 285
    :cond_1d
    nop

    .line 248
    :goto_15
    move/from16 v10, p5

    goto/16 :goto_19

    .line 285
    :cond_1e
    if-eqz v15, :cond_1f

    iget v1, v0, Landroid/support/v7/widget/Toolbar;->w:I

    goto :goto_16

    .line 263
    :cond_1f
    const/4 v1, 0x0

    .line 285
    :goto_16
    nop

    .line 249
    const/4 v2, 0x0

    aget v3, v9, v2

    sub-int/2addr v1, v3

    .line 250
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v10, p5, v3

    neg-int v1, v1

    .line 251
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v9, v2

    if-eqz v5, :cond_20

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 252
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lrr;

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 253
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v10

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 254
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v6

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 255
    invoke-virtual {v4, v10, v6, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->x:I

    add-int/2addr v2, v4

    .line 256
    iget v1, v1, Lrr;->bottomMargin:I

    add-int v6, v3, v1

    goto :goto_17

    .line 263
    :cond_20
    move v2, v10

    .line 256
    :goto_17
    if-eqz v11, :cond_21

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 257
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lrr;

    .line 258
    iget v3, v1, Lrr;->topMargin:I

    add-int/2addr v6, v3

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 259
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v10

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 260
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    add-int/2addr v4, v6

    .line 261
    invoke-virtual {v5, v10, v6, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->x:I

    add-int/2addr v3, v4

    .line 262
    iget v1, v1, Lrr;->bottomMargin:I

    goto :goto_18

    .line 263
    :cond_21
    move v3, v10

    .line 262
    :goto_18
    if-eqz v15, :cond_22

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_19

    :cond_22
    nop

    .line 248
    :goto_19
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    const/4 v2, 0x3

    .line 264
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_23

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move/from16 v11, p3

    invoke-direct {v0, v3, v10, v9, v11}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_23
    move/from16 v11, p3

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    const/4 v2, 0x5

    .line 267
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_24

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v8, v9, v11}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_24
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 270
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 271
    const/4 v3, 0x0

    aget v4, v9, v3

    .line 272
    aget v2, v9, v2

    .line 273
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    if-ge v5, v3, :cond_25

    .line 274
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 275
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lrr;

    .line 276
    iget v13, v12, Lrr;->leftMargin:I

    sub-int/2addr v13, v4

    .line 277
    iget v4, v12, Lrr;->rightMargin:I

    sub-int/2addr v4, v2

    .line 278
    const/4 v2, 0x0

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 279
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    neg-int v13, v13

    .line 280
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    neg-int v4, v4

    .line 281
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 282
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v12, v7

    add-int/2addr v12, v14

    add-int/2addr v6, v12

    add-int/lit8 v5, v5, 0x1

    move v2, v4

    move v4, v13

    goto :goto_1c

    :cond_25
    const/4 v2, 0x0

    sub-int v1, v16, v17

    sub-int v1, v1, p4

    div-int/lit8 v1, v1, 0x2

    add-int v4, v17, v1

    div-int/lit8 v1, v6, 0x2

    sub-int/2addr v4, v1

    add-int/2addr v6, v4

    if-ge v4, v10, :cond_26

    goto :goto_1d

    .line 285
    :cond_26
    if-le v6, v8, :cond_27

    sub-int/2addr v6, v8

    sub-int v10, v4, v6

    goto :goto_1d

    :cond_27
    move v10, v4

    .line 282
    :goto_1d
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1e
    if-ge v2, v1, :cond_28

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v10, v9, v11}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_28
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    iget-object v8, v7, Landroid/support/v7/widget/Toolbar;->I:[I

    .line 286
    invoke-static/range {p0 .. p0}, Lsd;->a(Landroid/view/View;)Z

    move-result v6

    xor-int/lit8 v9, v6, 0x1

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 287
    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    iget v5, v7, Landroid/support/v7/widget/Toolbar;->v:I

    .line 288
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII)V

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 289
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 290
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 291
    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 290
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 292
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    .line 293
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v11, v1

    move v12, v2

    goto :goto_0

    .line 355
    :cond_0
    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 293
    :goto_0
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    .line 294
    invoke-direct {v7, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    iget v5, v7, Landroid/support/v7/widget/Toolbar;->v:I

    .line 295
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII)V

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    .line 296
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    .line 297
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    .line 298
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    .line 299
    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 298
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/ImageButton;

    .line 300
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 301
    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_1

    .line 355
    :cond_1
    nop

    .line 302
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->i()I

    move-result v1

    .line 303
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    sub-int/2addr v1, v0

    .line 304
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v6

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 305
    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget v5, v7, Landroid/support/v7/widget/Toolbar;->v:I

    .line 306
    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII)V

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 307
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 308
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 309
    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 308
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 310
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredState()I

    move-result v1

    .line 311
    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_2

    .line 355
    :cond_2
    const/4 v0, 0x0

    .line 312
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->j()I

    move-result v1

    .line 313
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v13, v2

    sub-int/2addr v1, v0

    .line 314
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v9

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    .line 315
    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    const/4 v5, 0x0

    .line 316
    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v13, v0

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    .line 318
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->h:Landroid/view/View;

    .line 319
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 320
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_3

    .line 355
    :cond_3
    nop

    .line 320
    :goto_3
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 321
    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    const/4 v5, 0x0

    .line 322
    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v13, v0

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 323
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 324
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->u:Landroid/widget/ImageView;

    .line 325
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 326
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_4

    .line 355
    :cond_4
    nop

    .line 327
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v9

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v9, :cond_7

    .line 328
    invoke-virtual {v7, v14}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 329
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lrr;

    .line 330
    iget v0, v0, Lrr;->b:I

    if-nez v0, :cond_6

    invoke-direct {v7, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    .line 331
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v13, v0

    .line 332
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v15}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 333
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v11, v0

    move v12, v1

    goto :goto_6

    :cond_6
    nop

    .line 330
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 333
    :cond_7
    iget v0, v7, Landroid/support/v7/widget/Toolbar;->y:I

    iget v1, v7, Landroid/support/v7/widget/Toolbar;->z:I

    add-int v9, v0, v1

    iget v0, v7, Landroid/support/v7/widget/Toolbar;->w:I

    iget v1, v7, Landroid/support/v7/widget/Toolbar;->x:I

    add-int v14, v0, v1

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 334
    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    add-int v3, v13, v14

    .line 335
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v9

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 336
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 337
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 338
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move v15, v1

    move v6, v12

    move v12, v0

    goto :goto_7

    .line 355
    :cond_8
    move v6, v12

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 338
    :goto_7
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 339
    invoke-direct {v7, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    add-int v3, v13, v14

    add-int v5, v15, v9

    .line 340
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v9, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 341
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 342
    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 343
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 344
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_8

    .line 355
    :cond_9
    move v9, v6

    .line 345
    :goto_8
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v13, v12

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    .line 349
    move/from16 v5, p1

    invoke-static {v1, v5, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    .line 351
    move/from16 v3, p2

    invoke-static {v0, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    iget-boolean v2, v7, Landroid/support/v7/widget/Toolbar;->t:Z

    if-nez v2, :cond_a

    goto :goto_a

    .line 352
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_c

    .line 353
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 354
    invoke-direct {v7, v4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lez v5, :cond_b

    .line 355
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_b

    .line 356
    :goto_a
    move v10, v0

    goto :goto_b

    .line 355
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    nop

    .line 356
    :goto_b
    invoke-virtual {v7, v1, v10}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 357
    instance-of v0, p1, Lrt;

    if-nez v0, :cond_0

    .line 358
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 359
    :cond_0
    check-cast p1, Lrt;

    iget-object v0, p1, Lvl;->d:Landroid/os/Parcelable;

    .line 360
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->a:Lkp;

    goto :goto_0

    .line 366
    :cond_1
    const/4 v0, 0x0

    .line 361
    :goto_0
    iget v1, p1, Lrt;->a:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 362
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 363
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 364
    :cond_2
    iget-boolean p1, p1, Lrt;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar;->K:Ljava/lang/Runnable;

    .line 365
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar;->K:Ljava/lang/Runnable;

    .line 366
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 2

    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 368
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 369
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->n:Lre;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean p1, v0, Lre;->g:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iput-boolean v1, v0, Lre;->g:Z

    iget-boolean p1, v0, Lre;->h:Z

    if-eqz p1, :cond_7

    const/high16 p1, -0x80000000

    if-eqz v1, :cond_4

    iget v1, v0, Lre;->d:I

    if-ne v1, p1, :cond_2

    iget v1, v0, Lre;->e:I

    :cond_2
    iput v1, v0, Lre;->a:I

    iget v1, v0, Lre;->c:I

    if-ne v1, p1, :cond_3

    iget v1, v0, Lre;->f:I

    :cond_3
    iput v1, v0, Lre;->b:I

    return-void

    :cond_4
    iget v1, v0, Lre;->c:I

    if-ne v1, p1, :cond_5

    iget v1, v0, Lre;->e:I

    :cond_5
    iput v1, v0, Lre;->a:I

    iget v1, v0, Lre;->d:I

    if-ne v1, p1, :cond_6

    iget v1, v0, Lre;->f:I

    :cond_6
    iput v1, v0, Lre;->b:I

    return-void

    :cond_7
    iget p1, v0, Lre;->e:I

    iput p1, v0, Lre;->a:I

    iget p1, v0, Lre;->f:I

    iput p1, v0, Lre;->b:I

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 370
    new-instance v0, Lrt;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lrt;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lrq;->b:Lks;

    if-eqz v1, :cond_0

    iget v1, v1, Lks;->a:I

    iput v1, v0, Lrt;->a:I

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v1

    iput-boolean v1, v0, Lrt;->b:Z

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->F:Z

    const/4 v0, 0x0

    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->F:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 373
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->F:Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    nop

    :goto_0
    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_4

    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->F:Z

    :cond_4
    return v3
.end method
