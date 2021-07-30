.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "PG"


# static fields
.field private static final O:[I

.field private static final c:Landroid/util/Property;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private final H:Landroid/text/TextPaint;

.field private I:Landroid/content/res/ColorStateList;

.field private J:Landroid/text/Layout;

.field private K:Landroid/text/Layout;

.field private L:Landroid/text/method/TransformationMethod;

.field private final M:Lnp;

.field private final N:Landroid/graphics/Rect;

.field public a:F

.field b:Landroid/animation/ObjectAnimator;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/graphics/PorterDuff$Mode;

.field private g:Z

.field private h:Z

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/graphics/PorterDuff$Mode;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Ljava/lang/CharSequence;

.field private s:Ljava/lang/CharSequence;

.field private t:Z

.field private u:I

.field private v:I

.field private w:F

.field private x:F

.field private y:Landroid/view/VelocityTracker;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrh;

    const-class v1, Ljava/lang/Float;

    .line 1
    invoke-direct {v0, v1}, Lrh;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->c:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->O:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    const v0, 0x7f0402a3

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->f:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->g:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->h:Z

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->j:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->k:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->l:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->m:Z

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/view/VelocityTracker;

    new-instance v2, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0, v2}, Lri;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance v2, Landroid/text/TextPaint;

    .line 8
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->H:Landroid/text/TextPaint;

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v2, Landroid/text/TextPaint;->density:F

    .line 11
    sget-object v4, Ljh;->v:[I

    invoke-static {p1, p2, v4, p3, v1}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v4

    sget-object v7, Ljh;->v:[I

    iget-object v9, v4, Lrn;->b:Landroid/content/res/TypedArray;

    .line 12
    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-static/range {v5 .. v11}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 13
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 14
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    const/16 v6, 0xb

    .line 15
    invoke-virtual {v4, v6}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 16
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    nop

    .line 17
    invoke-virtual {v4, v1}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->r:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v4, v3}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->s:Ljava/lang/CharSequence;

    .line 19
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v3}, Lrn;->a(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->t:Z

    const/16 v7, 0x8

    .line 20
    invoke-virtual {v4, v7, v1}, Lrn;->d(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/SwitchCompat;->n:I

    const/4 v7, 0x5

    .line 21
    invoke-virtual {v4, v7, v1}, Lrn;->d(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/SwitchCompat;->o:I

    const/4 v7, 0x6

    .line 22
    invoke-virtual {v4, v7, v1}, Lrn;->d(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/SwitchCompat;->p:I

    const/4 v7, 0x4

    .line 23
    invoke-virtual {v4, v7, v1}, Lrn;->a(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->q:Z

    const/16 v7, 0x9

    .line 24
    invoke-virtual {v4, v7}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_2

    iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->e:Landroid/content/res/ColorStateList;

    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->g:Z

    :cond_2
    const/16 v7, 0xa

    .line 25
    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Lrn;->a(II)I

    move-result v7

    .line 26
    invoke-static {v7, v0}, Loh;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v9, v7, :cond_3

    iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->f:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->h:Z

    :cond_3
    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->g:Z

    if-nez v7, :cond_4

    iget-boolean v9, p0, Landroid/support/v7/widget/SwitchCompat;->h:Z

    if-eqz v9, :cond_8

    :cond_4
    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_8

    if-nez v7, :cond_5

    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->h:Z

    if-eqz v7, :cond_8

    .line 27
    :cond_5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    iget-boolean v9, p0, Landroid/support/v7/widget/SwitchCompat;->g:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->e:Landroid/content/res/ColorStateList;

    .line 29
    invoke-static {v7, v9}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_6
    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->h:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->f:Landroid/graphics/PorterDuff$Mode;

    .line 30
    invoke-static {v7, v9}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    const/16 v7, 0xc

    .line 33
    invoke-virtual {v4, v7}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_9

    iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->j:Landroid/content/res/ColorStateList;

    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->l:Z

    :cond_9
    const/16 v7, 0xd

    .line 34
    invoke-virtual {v4, v7, v8}, Lrn;->a(II)I

    move-result v7

    .line 35
    invoke-static {v7, v0}, Loh;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->k:Landroid/graphics/PorterDuff$Mode;

    if-eq v9, v7, :cond_a

    iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->k:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->m:Z

    :cond_a
    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->l:Z

    if-nez v7, :cond_b

    iget-boolean v9, p0, Landroid/support/v7/widget/SwitchCompat;->m:Z

    if-eqz v9, :cond_f

    :cond_b
    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_f

    if-nez v7, :cond_c

    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->m:Z

    if-eqz v7, :cond_f

    .line 36
    :cond_c
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    iget-boolean v9, p0, Landroid/support/v7/widget/SwitchCompat;->l:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->j:Landroid/content/res/ColorStateList;

    .line 38
    invoke-static {v7, v9}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_d
    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->m:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 39
    invoke-static {v7, v9}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_e
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_f
    const/4 v7, 0x7

    .line 42
    invoke-virtual {v4, v7, v1}, Lrn;->f(II)I

    move-result v7

    if-eqz v7, :cond_1b

    sget-object v9, Ljh;->w:[I

    .line 43
    invoke-static {p1, v7, v9}, Lrn;->a(Landroid/content/Context;I[I)Lrn;

    move-result-object v7

    .line 44
    invoke-virtual {v7, v6}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    if-eqz v9, :cond_10

    iput-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->I:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 45
    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->I:Landroid/content/res/ColorStateList;

    .line 44
    :goto_0
    nop

    .line 46
    invoke-virtual {v7, v1, v1}, Lrn;->d(II)I

    move-result v9

    if-eqz v9, :cond_11

    int-to-float v9, v9

    .line 47
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v10

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_11

    .line 48
    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 49
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    :cond_11
    nop

    .line 50
    invoke-virtual {v7, v3, v8}, Lrn;->a(II)I

    move-result v9

    .line 51
    invoke-virtual {v7, v5, v8}, Lrn;->a(II)I

    move-result v10

    if-eq v9, v3, :cond_14

    if-eq v9, v5, :cond_13

    if-eq v9, v6, :cond_12

    move-object v6, v0

    goto :goto_1

    .line 52
    :cond_12
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 53
    :cond_13
    sget-object v6, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    .line 54
    :cond_14
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 51
    :goto_1
    const/4 v9, 0x0

    if-lez v10, :cond_19

    if-nez v6, :cond_15

    .line 55
    invoke-static {v10}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_2

    .line 56
    :cond_15
    invoke-static {v6, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 57
    :goto_2
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/graphics/Typeface;)V

    if-eqz v6, :cond_16

    .line 58
    invoke-virtual {v6}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    goto :goto_3

    .line 74
    :cond_16
    const/4 v6, 0x0

    .line 58
    :goto_3
    xor-int/2addr v6, v8

    and-int/2addr v6, v10

    and-int/lit8 v8, v6, 0x1

    if-eq v3, v8, :cond_17

    const/4 v3, 0x0

    goto :goto_4

    .line 74
    :cond_17
    nop

    .line 59
    :goto_4
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 v3, v6, 0x2

    if-eqz v3, :cond_18

    const/high16 v9, -0x41800000    # -0.25f

    goto :goto_5

    .line 74
    :cond_18
    nop

    .line 60
    :goto_5
    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_6

    .line 56
    :cond_19
    nop

    .line 61
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 62
    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 63
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/graphics/Typeface;)V

    .line 60
    :goto_6
    const/16 v2, 0xe

    .line 64
    invoke-virtual {v7, v2, v1}, Lrn;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Ljl;

    .line 65
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->L:Landroid/text/method/TransformationMethod;

    goto :goto_7

    .line 74
    :cond_1a
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->L:Landroid/text/method/TransformationMethod;

    .line 66
    :goto_7
    invoke-virtual {v7}, Lrn;->a()V

    :cond_1b
    new-instance v0, Lnp;

    .line 67
    invoke-direct {v0, p0}, Lnp;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->M:Lnp;

    .line 68
    invoke-virtual {v0, p2, p3}, Lnp;->a(Landroid/util/AttributeSet;I)V

    .line 69
    invoke-virtual {v4}, Lrn;->a()V

    .line 70
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SwitchCompat;->v:I

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->z:I

    .line 73
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->refreshDrawableState()V

    .line 74
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private final a(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->L:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    .line 0
    :cond_0
    move-object v1, p1

    .line 126
    :goto_0
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->H:Landroid/text/TextPaint;

    if-eqz v1, :cond_1

    .line 127
    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1
.end method

.method private final a()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final b()I
    .locals 2

    .line 115
    invoke-static {p0}, Lsd;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 116
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:F

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->c()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private final c()I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0}, Loh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Loh;->a:Landroid/graphics/Rect;

    .line 118
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->A:I

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->C:I

    sub-int/2addr v2, v3

    .line 120
    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    return v2

    .line 119
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->a:F

    .line 254
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->H:Landroid/text/TextPaint;

    .line 249
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->H:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->H:Landroid/text/TextPaint;

    .line 250
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->H:Landroid/text/TextPaint;

    .line 251
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 252
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 253
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    :cond_2
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->D:I

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->E:I

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->F:I

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->G:I

    .line 75
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->b()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 76
    invoke-static {v6}, Loh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_0

    .line 77
    :cond_0
    sget-object v6, Loh;->a:Landroid/graphics/Rect;

    .line 76
    :goto_0
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 78
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 79
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    if-eqz v6, :cond_5

    .line 80
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_1

    .line 81
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 82
    :cond_1
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_2

    .line 83
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_1

    .line 95
    :cond_2
    move v7, v2

    .line 84
    :goto_1
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_3

    .line 85
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    sub-int/2addr v3, v8

    goto :goto_2

    .line 95
    :cond_3
    nop

    .line 86
    :goto_2
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_4

    .line 87
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    sub-int v6, v4, v6

    goto :goto_4

    .line 95
    :cond_4
    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    move v6, v4

    .line 87
    :goto_4
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    .line 95
    :cond_6
    nop

    .line 88
    :goto_5
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 89
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 90
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->C:I

    add-int/2addr v5, v3

    .line 91
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 94
    invoke-static {v0, v1, v2, v5, v4}, Ley;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 95
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawableHotspotChanged(FF)V
    .locals 1

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0, p1, p2}, Ley;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 99
    invoke-static {v0, p1, p2}, Ley;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_1
    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 4

    .line 100
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 101
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    goto :goto_0

    .line 106
    :cond_0
    nop

    .line 103
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    :cond_2
    return-void
.end method

.method public final getCompoundPaddingLeft()I
    .locals 2

    .line 107
    invoke-static {p0}, Lsd;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 109
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->A:I

    add-int/2addr v0, v1

    .line 110
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->p:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final getCompoundPaddingRight()I
    .locals 2

    .line 111
    invoke-static {p0}, Lsd;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->A:I

    add-int/2addr v0, v1

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->p:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/animation/ObjectAnimator;

    .line 125
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v7/widget/SwitchCompat;->O:[I

    .line 130
    invoke-static {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 131
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 132
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->E:I

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->G:I

    .line 134
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 135
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-boolean v5, p0, Landroid/support/v7/widget/SwitchCompat;->q:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 137
    invoke-static {v4}, Loh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    .line 138
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 139
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 140
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 142
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 143
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_3

    .line 146
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->J:Landroid/text/Layout;

    goto :goto_2

    .line 151
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->K:Landroid/text/Layout;

    .line 146
    :goto_2
    if-eqz v1, :cond_7

    .line 147
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->I:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_5

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->H:Landroid/text/TextPaint;

    const/4 v8, 0x0

    .line 148
    invoke-virtual {v6, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    :cond_5
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->H:Landroid/text/TextPaint;

    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_6

    .line 149
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 150
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    goto :goto_3

    .line 151
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v5

    .line 150
    :goto_3
    div-int/lit8 v5, v5, 0x2

    .line 152
    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    int-to-float v4, v5

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 153
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 154
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 156
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 158
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 159
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 160
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->r:Ljava/lang/CharSequence;

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->s:Ljava/lang/CharSequence;

    .line 162
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    .line 169
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 170
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 170
    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-static {p3}, Loh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p3

    .line 173
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 174
    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    .line 171
    :cond_1
    const/4 p4, 0x0

    .line 175
    :goto_1
    invoke-static {p0}, Lsd;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p4

    iget p3, p0, Landroid/support/v7/widget/SwitchCompat;->A:I

    add-int/2addr p3, p1

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    goto :goto_2

    .line 177
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p1, p2

    iget p1, p0, Landroid/support/v7/widget/SwitchCompat;->A:I

    sub-int p1, p3, p1

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    .line 178
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getGravity()I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    const/16 p4, 0x10

    if-eq p2, p4, :cond_4

    const/16 p4, 0x50

    if-eq p2, p4, :cond_3

    .line 181
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result p2

    iget p4, p0, Landroid/support/v7/widget/SwitchCompat;->B:I

    add-int/2addr p4, p2

    goto :goto_3

    .line 179
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result p4

    sub-int p4, p2, p4

    iget p2, p0, Landroid/support/v7/widget/SwitchCompat;->B:I

    sub-int p2, p4, p2

    goto :goto_3

    .line 180
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result p5

    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:I

    add-int/2addr p2, p4

    sub-int/2addr p2, p5

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p4, v0, 0x2

    sub-int/2addr p2, p4

    add-int p4, p2, v0

    .line 181
    :goto_3
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->D:I

    iput p2, p0, Landroid/support/v7/widget/SwitchCompat;->E:I

    iput p4, p0, Landroid/support/v7/widget/SwitchCompat;->G:I

    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->F:I

    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->J:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->r:Ljava/lang/CharSequence;

    .line 182
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->J:Landroid/text/Layout;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->K:Landroid/text/Layout;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->s:Ljava/lang/CharSequence;

    .line 183
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->K:Landroid/text/Layout;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 185
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 186
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    .line 191
    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 186
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/SwitchCompat;->t:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->J:Landroid/text/Layout;

    .line 187
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->K:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->n:I

    add-int/2addr v5, v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 191
    :cond_3
    const/4 v4, 0x0

    .line 188
    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->C:I

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 189
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    .line 190
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_2

    .line 191
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 192
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 193
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 194
    invoke-static {v4}, Loh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v4

    .line 195
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 196
    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->o:I

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->C:I

    add-int/2addr v5, v5

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    .line 197
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->A:I

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->B:I

    .line 199
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 200
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_6

    .line 201
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setMeasuredDimension(II)V

    :cond_6
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 202
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 203
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->r:Ljava/lang/CharSequence;

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->s:Ljava/lang/CharSequence;

    .line 203
    :goto_0
    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/view/VelocityTracker;

    .line 205
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_b

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_b

    goto/16 :goto_4

    .line 235
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    if-eq v0, v1, :cond_9

    if-eq v0, v3, :cond_2

    :cond_1
    goto/16 :goto_4

    .line 207
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 208
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->c()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->w:F

    sub-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    .line 210
    :cond_3
    cmpl-float v0, v2, v4

    if-lez v0, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    .line 209
    :goto_0
    invoke-static {p0}, Lsd;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    neg-float v2, v2

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:F

    add-float/2addr v2, v0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_6

    goto :goto_1

    .line 210
    :cond_6
    cmpl-float v4, v2, v3

    if-lez v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    move v4, v2

    .line 209
    :goto_1
    cmpl-float v0, v4, v0

    if-eqz v0, :cond_8

    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->w:F

    .line 210
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/SwitchCompat;->a(F)V

    :cond_8
    return v1

    .line 211
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->w:F

    sub-float v4, v0, v4

    .line 213
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->v:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_a

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->x:F

    sub-float v4, v2, v4

    .line 214
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->v:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_15

    :cond_a
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    .line 215
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->w:F

    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->x:F

    return v1

    .line 210
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    const/4 v5, 0x0

    if-ne v0, v3, :cond_12

    iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_2

    .line 228
    :cond_c
    const/4 v0, 0x0

    .line 217
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    .line 218
    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/view/VelocityTracker;

    .line 219
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 220
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->z:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f

    .line 221
    invoke-static {p0}, Lsd;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_d

    cmpg-float v0, v0, v4

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_3

    .line 228
    :cond_d
    cmpl-float v0, v0, v4

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    goto :goto_3

    :cond_f
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->a()Z

    move-result v0

    goto :goto_3

    :cond_10
    move v0, v3

    .line 221
    :goto_3
    if-eq v0, v3, :cond_11

    .line 222
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/SwitchCompat;->playSoundEffect(I)V

    .line 223
    :cond_11
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 224
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 225
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 226
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 227
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 228
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_12
    iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/view/VelocityTracker;

    .line 229
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_4

    .line 230
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 232
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_14

    goto :goto_4

    .line 233
    :cond_14
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->b()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 234
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->E:I

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->v:I

    sub-int/2addr v4, v5

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->D:I

    add-int/2addr v6, v3

    sub-int/2addr v6, v5

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->C:I

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    .line 235
    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->N:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->v:I

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v3, v7

    add-int/2addr v3, v8

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->G:I

    add-int/2addr v5, v8

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_1

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    int-to-float v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    int-to-float v3, v5

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->w:F

    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->x:F

    .line 236
    :cond_15
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setChecked(Z)V
    .locals 4

    .line 237
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result p1

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Lge;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq v3, p1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 239
    :goto_0
    sget-object p1, Landroid/support/v7/widget/SwitchCompat;->c:Landroid/util/Property;

    new-array v0, v3, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 242
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xfa

    .line 243
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 244
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/animation/ObjectAnimator;

    .line 245
    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/animation/ObjectAnimator;

    .line 246
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-eq v3, p1, :cond_3

    goto :goto_1

    .line 241
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SwitchCompat;->a(F)V

    return-void
.end method

.method public final setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 247
    invoke-static {}, Lhz;->a()V

    .line 248
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public final toggle()V
    .locals 1

    .line 255
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 256
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
