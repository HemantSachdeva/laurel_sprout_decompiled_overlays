.class public final Lcly;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcmb;


# instance fields
.field final a:Z

.field public b:Landroid/widget/LinearLayout;

.field public c:Lcma;

.field public d:Lcma;

.field public e:I

.field f:Landroid/content/res/ColorStateList;

.field g:Landroid/content/res/ColorStateList;

.field final h:I

.field public final i:Lclt;

.field private final j:Landroid/content/Context;

.field private final k:Landroid/view/ViewStub;

.field private l:I

.field private m:I

.field private n:I

.field private final o:I

.field private final p:I

.field private final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcly;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcly;->g:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcly;->q:Z

    new-instance v1, Lclt;

    .line 2
    invoke-direct {v1}, Lclt;-><init>()V

    iput-object v1, p0, Lcly;->i:Lclt;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcly;->j:Landroid/content/Context;

    .line 4
    const v3, 0x7f0a0173

    invoke-virtual {p1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcly;->k:Landroid/view/ViewStub;

    check-cast p1, Lckz;

    .line 5
    invoke-virtual {p1}, Lckz;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcly;->a:Z

    .line 6
    sget-object p1, Lcla;->a:[I

    .line 7
    const/4 v3, 0x0

    invoke-virtual {v2, p2, p1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    const/16 p2, 0x8

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcly;->h:I

    .line 9
    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcly;->m:I

    .line 10
    const/4 p3, 0x6

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcly;->n:I

    .line 11
    const/16 p2, 0x9

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcly;->o:I

    .line 12
    const/16 p2, 0xb

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcly;->p:I

    .line 13
    const/16 p2, 0xa

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 14
    const/16 p3, 0xc

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_0

    .line 16
    invoke-static {p3, v2}, Lcme;->a(ILandroid/content/Context;)Lcma;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcly;->b(Lcma;)V

    .line 17
    invoke-virtual {v1, v0, v0}, Lclt;->a(ZZ)V

    :cond_0
    if-eqz p2, :cond_1

    .line 18
    invoke-static {p2, v2}, Lcme;->a(ILandroid/content/Context;)Lcma;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcly;->a(Lcma;)V

    .line 19
    invoke-virtual {v1, v0, v0}, Lclt;->b(ZZ)V

    :cond_1
    return-void
.end method

.method private static a(IF)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 20
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private final a(Lcma;ILclu;)I
    .locals 1

    iget p1, p1, Lcma;->d:I

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcly;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    goto :goto_0

    .line 52
    :cond_1
    nop

    .line 0
    :goto_0
    iget-boolean p1, p0, Lcly;->a:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcly;->j:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object p1

    iget-object v0, p0, Lcly;->j:Landroid/content/Context;

    invoke-virtual {p1, v0, p3}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result p1

    if-nez p1, :cond_2

    const p2, 0x7f120184

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const p1, 0x7f120183

    return p1

    :cond_4
    :goto_1
    nop

    :goto_2
    return p2
.end method

.method private static a(I)Lclu;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :pswitch_0
    sget-object p0, Lclu;->n:Lclu;

    return-object p0

    .line 45
    :pswitch_1
    sget-object p0, Lclu;->m:Lclu;

    return-object p0

    .line 46
    :pswitch_2
    sget-object p0, Lclu;->l:Lclu;

    return-object p0

    .line 47
    :pswitch_3
    sget-object p0, Lclu;->k:Lclu;

    return-object p0

    .line 48
    :pswitch_4
    sget-object p0, Lclu;->j:Lclu;

    return-object p0

    .line 49
    :pswitch_5
    sget-object p0, Lclu;->i:Lclu;

    return-object p0

    .line 50
    :pswitch_6
    sget-object p0, Lclu;->h:Lclu;

    return-object p0

    .line 51
    :pswitch_7
    sget-object p0, Lclu;->g:Lclu;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Lcma;Lclf;)Lcom/google/android/setupcompat/template/FooterActionButton;
    .locals 3

    iget-object v0, p0, Lcly;->j:Landroid/content/Context;

    iget p2, p2, Lclf;->j:I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 55
    invoke-direct {v1, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 56
    const v0, 0x7f0d0095

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterActionButton;->setId(I)V

    iget-object v0, p1, Lcma;->b:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterActionButton;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p2, p1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p2, v2}, Lcom/google/android/setupcompat/template/FooterActionButton;->setVisibility(I)V

    iget-boolean v0, p1, Lcma;->c:Z

    .line 62
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterActionButton;->setEnabled(Z)V

    iput-object p1, p2, Lcom/google/android/setupcompat/template/FooterActionButton;->a:Lcma;

    .line 63
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterActionButton;->getId()I

    move-result v0

    new-instance v1, Lclx;

    .line 64
    invoke-direct {v1, p0, v0}, Lclx;-><init>(Lcly;I)V

    iput-object v1, p1, Lcma;->f:Lclx;

    return-object p2
.end method

.method private final a(Landroid/widget/Button;Lclf;)V
    .locals 10

    iget-boolean v0, p0, Lcly;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p2, Lclf;->e:Lclu;

    .line 68
    invoke-virtual {p0, p1, v0}, Lcly;->a(Landroid/widget/Button;Lclu;)V

    iget-object v0, p2, Lclf;->f:Lclu;

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    .line 69
    invoke-static {v1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v2, p0, Lcly;->j:Landroid/content/Context;

    .line 70
    invoke-virtual {v1, v2, v0}, Lclv;->e(Landroid/content/Context;Lclu;)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    .line 71
    invoke-virtual {p1, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    iget-object v0, p2, Lclf;->g:Lclu;

    iget-object v3, p0, Lcly;->j:Landroid/content/Context;

    .line 72
    invoke-static {v3}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v3

    iget-object v4, p0, Lcly;->j:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lclv;->c(Landroid/content/Context;Lclu;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v0, p2, Lclf;->a:Lclu;

    iget-object v3, p2, Lclf;->b:Lclu;

    iget-object v4, p2, Lclf;->c:Lclu;

    .line 75
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    const/4 v7, 0x1

    if-lt v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    .line 96
    :cond_2
    const/4 v5, 0x0

    .line 75
    :goto_0
    const-string v6, "Update button background only support on sdk Q or higher"

    invoke-static {v5, v6}, Lcln;->a(ZLjava/lang/String;)V

    new-array v5, v7, [I

    const v6, -0x101009e

    aput v6, v5, v2

    new-array v6, v2, [I

    iget-object v8, p0, Lcly;->j:Landroid/content/Context;

    .line 76
    invoke-static {v8}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v8

    iget-object v9, p0, Lcly;->j:Landroid/content/Context;

    invoke-virtual {v8, v9, v0}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result v0

    iget-object v8, p0, Lcly;->j:Landroid/content/Context;

    .line 77
    invoke-static {v8}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v8

    iget-object v9, p0, Lcly;->j:Landroid/content/Context;

    invoke-virtual {v8, v9, v3}, Lclv;->f(Landroid/content/Context;Lclu;)F

    move-result v3

    iget-object v8, p0, Lcly;->j:Landroid/content/Context;

    .line 78
    invoke-static {v8}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v8

    iget-object v9, p0, Lcly;->j:Landroid/content/Context;

    invoke-virtual {v8, v9, v4}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result v4

    const/4 v8, 0x2

    if-eqz v0, :cond_5

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    new-array v3, v7, [I

    const v9, 0x1010033

    aput v9, v3, v2

    .line 79
    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const v3, 0x3e851eb8    # 0.26f

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 81
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    if-nez v4, :cond_4

    move v4, v0

    :cond_4
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v9, v8, [[I

    aput-object v5, v9, v2

    aput-object v6, v9, v7

    new-array v5, v8, [I

    .line 82
    invoke-static {v4, v3}, Lcly;->a(IF)I

    move-result v3

    aput v3, v5, v2

    aput v0, v5, v7

    invoke-direct {v1, v9, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 83
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-array v3, v2, [I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 84
    invoke-virtual {p1}, Landroid/widget/Button;->refreshDrawableState()V

    .line 85
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    iget-object v0, p2, Lclf;->h:Lclu;

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    .line 87
    invoke-static {v1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v3, p0, Lcly;->j:Landroid/content/Context;

    .line 88
    invoke-virtual {v1, v3, v0}, Lclv;->e(Landroid/content/Context;Lclu;)F

    move-result v0

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    instance-of v3, v1, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 92
    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 93
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    .line 94
    :cond_6
    instance-of v3, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_7

    .line 95
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 96
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_7
    move-object v1, v4

    .line 93
    :goto_1
    if-eqz v1, :cond_8

    .line 97
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_8
    iget-object v0, p2, Lclf;->d:Lclu;

    if-nez p1, :cond_9

    goto :goto_4

    .line 112
    :cond_9
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    .line 98
    invoke-static {v1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v3, p0, Lcly;->j:Landroid/content/Context;

    invoke-virtual {v1, v3, v0}, Lclv;->b(Landroid/content/Context;Lclu;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 103
    :cond_a
    move-object v0, v4

    .line 98
    :goto_2
    if-eqz v0, :cond_b

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 101
    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    :cond_b
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v1

    iget v3, p0, Lcly;->e:I

    if-ne v1, v3, :cond_c

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 103
    :cond_c
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v1

    iget v3, p0, Lcly;->l:I

    if-ne v1, v3, :cond_d

    move-object v1, v4

    goto :goto_3

    :cond_d
    move-object v0, v4

    move-object v1, v0

    .line 104
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 105
    invoke-virtual {p1, v0, v4, v1, v4}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 106
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 109
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_e

    .line 110
    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    goto :goto_5

    .line 111
    :cond_e
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_f

    .line 112
    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    goto :goto_5

    :cond_f
    nop

    .line 110
    :goto_5
    if-nez v4, :cond_10

    return-void

    :cond_10
    new-array p1, v7, [I

    const v0, 0x10100a7

    aput v0, p1, v2

    iget-object v0, p0, Lcly;->j:Landroid/content/Context;

    .line 113
    invoke-static {v0}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v0

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    iget-object v3, p2, Lclf;->e:Lclu;

    .line 114
    invoke-virtual {v0, v1, v3}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result v0

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    .line 115
    invoke-static {v1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v3, p0, Lcly;->j:Landroid/content/Context;

    iget-object p2, p2, Lclf;->i:Lclu;

    .line 116
    invoke-virtual {v1, v3, p2}, Lclv;->f(Landroid/content/Context;Lclu;)F

    move-result p2

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v3, v8, [[I

    aput-object p1, v3, v2

    .line 117
    sget-object p1, Landroid/util/StateSet;->NOTHING:[I

    aput-object p1, v3, v7

    new-array p1, v8, [I

    .line 118
    invoke-static {v0, p2}, Lcly;->a(IF)I

    move-result p2

    aput p2, p1, v2

    aput v2, p1, v7

    invoke-direct {v1, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 119
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 96
    :cond_11
    return-void
.end method

.method private final f()Landroid/widget/LinearLayout;
    .locals 5

    iget-object v0, p0, Lcly;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcly;->k:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    const v2, 0x7f120186

    .line 22
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcly;->k:Landroid/view/ViewStub;

    .line 24
    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    iget-object v0, p0, Lcly;->k:Landroid/view/ViewStub;

    const v1, 0x7f0d0096

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v0, p0, Lcly;->k:Landroid/view/ViewStub;

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcly;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 30
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcly;->m:I

    .line 31
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcly;->n:I

    .line 32
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcly;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcly;->a:Z

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    .line 33
    invoke-static {v1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v2, p0, Lcly;->j:Landroid/content/Context;

    sget-object v3, Lclu;->d:Lclu;

    .line 34
    invoke-virtual {v1, v2, v3}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    .line 36
    invoke-static {v1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v2, p0, Lcly;->j:Landroid/content/Context;

    sget-object v3, Lclu;->o:Lclu;

    .line 37
    invoke-virtual {v1, v2, v3}, Lclv;->e(Landroid/content/Context;Lclu;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcly;->m:I

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    .line 38
    invoke-static {v1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    iget-object v2, p0, Lcly;->j:Landroid/content/Context;

    sget-object v3, Lclu;->p:Lclu;

    .line 39
    invoke-virtual {v1, v2, v3}, Lclv;->e(Landroid/content/Context;Lclu;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcly;->n:I

    .line 40
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcly;->m:I

    .line 41
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcly;->n:I

    .line 42
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 32
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    const-string v1, "Footer stub is not found in this template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_4
    :goto_0
    iget-object v0, p0, Lcly;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/Button;
    .locals 2

    iget-object v0, p0, Lcly;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, p0, Lcly;->e:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected final a(Landroid/widget/Button;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p2, p0, Lcly;->b:Landroid/widget/LinearLayout;

    .line 121
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Lcly;->a()Landroid/widget/Button;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcly;->d()Landroid/widget/Button;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 p1, 0x0

    .line 124
    :goto_0
    if-eqz p2, :cond_2

    .line 125
    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 126
    :cond_2
    const/4 v0, 0x0

    .line 125
    :goto_1
    iget-object p2, p0, Lcly;->b:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_6

    if-nez p1, :cond_5

    if-eqz v0, :cond_3

    goto :goto_2

    .line 126
    :cond_3
    iget-boolean p1, p0, Lcly;->q:Z

    if-eqz p1, :cond_4

    const/16 v1, 0x8

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    nop

    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final a(Landroid/widget/Button;Lclu;)V
    .locals 2

    .line 162
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcly;->j:Landroid/content/Context;

    .line 163
    invoke-static {v0}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v0

    iget-object v1, p0, Lcly;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 164
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p2

    iget v0, p0, Lcly;->e:I

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcly;->f:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 166
    :cond_2
    iget-object p2, p0, Lcly;->g:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final a(Lcma;)V
    .locals 3

    .line 138
    const-string v0, "setPrimaryButton"

    invoke-static {v0}, Lcln;->a(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcly;->f()Landroid/widget/LinearLayout;

    new-instance v0, Lcle;

    .line 140
    invoke-direct {v0, p1}, Lcle;-><init>(Lcma;)V

    sget-object v1, Lclu;->v:Lclu;

    .line 141
    const v2, 0x7f120183

    invoke-direct {p0, p1, v2, v1}, Lcly;->a(Lcma;ILclu;)I

    move-result v1

    iput v1, v0, Lcle;->j:I

    sget-object v1, Lclu;->v:Lclu;

    iput-object v1, v0, Lcle;->a:Lclu;

    sget-object v1, Lclu;->t:Lclu;

    iput-object v1, v0, Lcle;->b:Lclu;

    sget-object v1, Lclu;->u:Lclu;

    iput-object v1, v0, Lcle;->c:Lclu;

    iget v1, p1, Lcma;->a:I

    .line 142
    invoke-static {v1}, Lcly;->a(I)Lclu;

    move-result-object v1

    iput-object v1, v0, Lcle;->d:Lclu;

    sget-object v1, Lclu;->q:Lclu;

    iput-object v1, v0, Lcle;->h:Lclu;

    sget-object v1, Lclu;->r:Lclu;

    iput-object v1, v0, Lcle;->i:Lclu;

    sget-object v1, Lclu;->w:Lclu;

    iput-object v1, v0, Lcle;->e:Lclu;

    sget-object v1, Lclu;->s:Lclu;

    iput-object v1, v0, Lcle;->f:Lclu;

    sget-object v1, Lclu;->f:Lclu;

    iput-object v1, v0, Lcle;->g:Lclu;

    .line 143
    invoke-virtual {v0}, Lcle;->a()Lclf;

    move-result-object v0

    .line 144
    invoke-direct {p0, p1, v0}, Lcly;->a(Lcma;Lclf;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->getId()I

    move-result v2

    iput v2, p0, Lcly;->e:I

    .line 146
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcly;->f:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcly;->c:Lcma;

    iget p1, p0, Lcly;->o:I

    .line 147
    invoke-virtual {p0, v1, p1}, Lcly;->a(Landroid/widget/Button;I)V

    .line 148
    invoke-direct {p0, v1, v0}, Lcly;->a(Landroid/widget/Button;Lclf;)V

    .line 149
    invoke-virtual {p0}, Lcly;->c()V

    return-void
.end method

.method public final b(Lcma;)V
    .locals 3

    .line 150
    const-string v0, "setSecondaryButton"

    invoke-static {v0}, Lcln;->a(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcly;->f()Landroid/widget/LinearLayout;

    new-instance v0, Lcle;

    .line 152
    invoke-direct {v0, p1}, Lcle;-><init>(Lcma;)V

    sget-object v1, Lclu;->x:Lclu;

    .line 153
    const v2, 0x7f120184

    invoke-direct {p0, p1, v2, v1}, Lcly;->a(Lcma;ILclu;)I

    move-result v1

    iput v1, v0, Lcle;->j:I

    sget-object v1, Lclu;->x:Lclu;

    iput-object v1, v0, Lcle;->a:Lclu;

    sget-object v1, Lclu;->t:Lclu;

    iput-object v1, v0, Lcle;->b:Lclu;

    sget-object v1, Lclu;->u:Lclu;

    iput-object v1, v0, Lcle;->c:Lclu;

    iget v1, p1, Lcma;->a:I

    .line 154
    invoke-static {v1}, Lcly;->a(I)Lclu;

    move-result-object v1

    iput-object v1, v0, Lcle;->d:Lclu;

    sget-object v1, Lclu;->q:Lclu;

    iput-object v1, v0, Lcle;->h:Lclu;

    sget-object v1, Lclu;->r:Lclu;

    iput-object v1, v0, Lcle;->i:Lclu;

    sget-object v1, Lclu;->y:Lclu;

    iput-object v1, v0, Lcle;->e:Lclu;

    sget-object v1, Lclu;->s:Lclu;

    iput-object v1, v0, Lcle;->f:Lclu;

    sget-object v1, Lclu;->f:Lclu;

    iput-object v1, v0, Lcle;->g:Lclu;

    .line 155
    invoke-virtual {v0}, Lcle;->a()Lclf;

    move-result-object v0

    .line 156
    invoke-direct {p0, p1, v0}, Lcly;->a(Lcma;Lclf;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->getId()I

    move-result v2

    iput v2, p0, Lcly;->l:I

    .line 158
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterActionButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcly;->g:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcly;->d:Lcma;

    iget p1, p0, Lcly;->p:I

    .line 159
    invoke-virtual {p0, v1, p1}, Lcly;->a(Landroid/widget/Button;I)V

    .line 160
    invoke-direct {p0, v1, v0}, Lcly;->a(Landroid/widget/Button;Lclf;)V

    .line 161
    invoke-virtual {p0}, Lcly;->c()V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcly;->a()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcly;->a()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()V
    .locals 7

    .line 127
    invoke-direct {p0}, Lcly;->f()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcly;->a()Landroid/widget/Button;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Lcly;->d()Landroid/widget/Button;

    move-result-object v2

    .line 130
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    :cond_0
    invoke-direct {p0}, Lcly;->f()Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Landroid/view/View;

    .line 133
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 134
    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x4

    .line 135
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final d()Landroid/widget/Button;
    .locals 2

    iget-object v0, p0, Lcly;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, p0, Lcly;->l:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcly;->d()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcly;->d()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
