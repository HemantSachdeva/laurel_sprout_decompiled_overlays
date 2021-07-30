.class public final Lrw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnw;


# instance fields
.field final a:Landroid/support/v7/widget/Toolbar;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/view/Window$Callback;

.field d:Z

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Z

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Lmc;

.field private n:I

.field private final o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lrw;->n:I

    iput-object p1, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p1, Landroid/support/v7/widget/Toolbar;->o:Ljava/lang/CharSequence;

    iput-object v1, p0, Lrw;->b:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v7/widget/Toolbar;->p:Ljava/lang/CharSequence;

    iput-object v1, p0, Lrw;->k:Ljava/lang/CharSequence;

    iget-object v1, p0, Lrw;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 0
    :goto_0
    iput-boolean v1, p0, Lrw;->j:Z

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lrw;->i:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Ljh;->a:[I

    const v4, 0x7f040005

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4, v0}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v1

    const/16 v3, 0xf

    .line 3
    invoke-virtual {v1, v3}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lrw;->o:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x1b

    .line 4
    invoke-virtual {v1, v4}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iput-boolean v2, p0, Lrw;->j:Z

    .line 6
    invoke-direct {p0, v4}, Lrw;->b(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v2, 0x19

    .line 7
    invoke-virtual {v1, v2}, Lrn;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v2, p0, Lrw;->k:Ljava/lang/CharSequence;

    iget v4, p0, Lrw;->e:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 v2, 0x14

    .line 10
    invoke-virtual {v1, v2}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-object v2, p0, Lrw;->h:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-direct {p0}, Lrw;->r()V

    :cond_3
    const/16 v2, 0x11

    .line 12
    invoke-virtual {v1, v2}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object v2, p0, Lrw;->g:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-direct {p0}, Lrw;->r()V

    :cond_4
    iget-object v2, p0, Lrw;->i:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    iput-object v3, p0, Lrw;->i:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-direct {p0}, Lrw;->s()V

    :cond_5
    const/16 v2, 0xa

    .line 15
    invoke-virtual {v1, v2, v0}, Lrn;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lrw;->a(I)V

    const/16 v2, 0x9

    .line 16
    invoke-virtual {v1, v2, v0}, Lrn;->f(II)I

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lrw;->f:Landroid/view/View;

    if-eqz v3, :cond_6

    iget v4, p0, Lrw;->e:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 18
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_6
    iput-object v2, p0, Lrw;->f:Landroid/view/View;

    if-eqz v2, :cond_7

    iget v3, p0, Lrw;->e:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    .line 19
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_7
    iget v2, p0, Lrw;->e:I

    or-int/lit8 v2, v2, 0x10

    .line 20
    invoke-virtual {p0, v2}, Lrw;->a(I)V

    :cond_8
    const/16 v2, 0xd

    .line 21
    invoke-virtual {v1, v2, v0}, Lrn;->e(II)I

    move-result v2

    if-lez v2, :cond_9

    .line 22
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const/4 v2, 0x7

    .line 24
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lrn;->c(II)I

    move-result v2

    const/4 v4, 0x3

    .line 25
    invoke-virtual {v1, v4, v3}, Lrn;->c(II)I

    move-result v3

    if-gez v2, :cond_a

    if-ltz v3, :cond_b

    .line 26
    :cond_a
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 27
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 28
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->m()V

    iget-object v4, p1, Landroid/support/v7/widget/Toolbar;->n:Lre;

    .line 29
    invoke-virtual {v4, v2, v3}, Lre;->a(II)V

    :cond_b
    const/16 v2, 0x1c

    .line 30
    invoke-virtual {v1, v2, v0}, Lrn;->f(II)I

    move-result v2

    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput v2, p1, Landroid/support/v7/widget/Toolbar;->k:I

    iget-object v4, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v4, :cond_c

    .line 32
    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_c
    const/16 v2, 0x1a

    .line 33
    invoke-virtual {v1, v2, v0}, Lrn;->f(II)I

    move-result v2

    if-eqz v2, :cond_d

    .line 34
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput v2, p1, Landroid/support/v7/widget/Toolbar;->l:I

    iget-object v4, p1, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 35
    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_d
    const/16 v2, 0x16

    .line 36
    invoke-virtual {v1, v2, v0}, Lrn;->f(II)I

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->a(I)V

    .line 38
    :cond_e
    invoke-virtual {v1}, Lrn;->a()V

    iget v0, p0, Lrw;->n:I

    const v1, 0x7f110002

    if-ne v0, v1, :cond_f

    goto :goto_2

    .line 45
    :cond_f
    iput v1, p0, Lrw;->n:I

    .line 39
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lrw;->n:I

    if-nez v0, :cond_10

    goto :goto_1

    .line 40
    :cond_10
    invoke-virtual {p0}, Lrw;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 39
    :goto_1
    iput-object v5, p0, Lrw;->l:Ljava/lang/CharSequence;

    .line 41
    invoke-direct {p0}, Lrw;->t()V

    .line 38
    :cond_11
    :goto_2
    nop

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->d()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lrw;->l:Ljava/lang/CharSequence;

    new-instance v0, Lru;

    .line 43
    invoke-direct {v0, p0}, Lru;-><init>(Lrw;)V

    .line 44
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->k()V

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final b(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lrw;->b:Ljava/lang/CharSequence;

    iget v0, p0, Lrw;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 79
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final r()V
    .locals 2

    iget v0, p0, Lrw;->e:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrw;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lrw;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lrw;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 0
    :cond_2
    :goto_0
    iget-object v1, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 92
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final s()V
    .locals 2

    iget v0, p0, Lrw;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lrw;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lrw;->o:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final t()V
    .locals 3

    iget v0, p0, Lrw;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrw;->l:Ljava/lang/CharSequence;

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lrw;->n:I

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lrw;->l:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final a(IJ)Lgi;
    .locals 2

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 82
    invoke-static {v0}, Lge;->l(Landroid/view/View;)Lgi;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    invoke-virtual {v0, v1}, Lgi;->a(F)V

    .line 84
    invoke-virtual {v0, p2, p3}, Lgi;->a(J)V

    new-instance p2, Lrv;

    invoke-direct {p2, p0, p1}, Lrv;-><init>(Lrw;I)V

    .line 85
    invoke-virtual {v0, p2}, Lgi;->a(Lgj;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    iget v0, p0, Lrw;->e:I

    xor-int/2addr v0, p1

    iput p1, p0, Lrw;->e:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 56
    invoke-direct {p0}, Lrw;->t()V

    .line 57
    :cond_0
    invoke-direct {p0}, Lrw;->s()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 58
    invoke-direct {p0}, Lrw;->r()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lrw;->b:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lrw;->k:Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 62
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 60
    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Lrw;->f:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    iget-object p1, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 63
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    return-void

    :cond_5
    iget-object p1, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 64
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    return-void

    .line 62
    :cond_6
    return-void
.end method

.method public final a(Landroid/view/Menu;Llc;)V
    .locals 3

    iget-object v0, p0, Lrw;->m:Lmc;

    if-nez v0, :cond_0

    new-instance v0, Lmc;

    iget-object v1, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 65
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lrw;->m:Lmc;

    :cond_0
    iget-object v0, p0, Lrw;->m:Lmc;

    iput-object p2, v0, Lkc;->e:Llc;

    iget-object p2, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    if-nez p1, :cond_1

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_2

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->f()V

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->a:Lkp;

    if-ne v1, p1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->r:Lmc;

    .line 67
    invoke-virtual {v1, v2}, Lkp;->b(Lld;)V

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    .line 68
    invoke-virtual {v1, v2}, Lkp;->b(Lld;)V

    :cond_4
    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    if-nez v1, :cond_5

    new-instance v1, Lrq;

    .line 69
    invoke-direct {v1, p2}, Lrq;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p2, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    .line 70
    :cond_5
    invoke-virtual {v0}, Lmc;->g()V

    if-eqz p1, :cond_6

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    check-cast p1, Lkp;

    .line 71
    invoke-virtual {p1, v0, v1}, Lkp;->a(Lld;Landroid/content/Context;)V

    iget-object v1, p2, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    .line 72
    invoke-virtual {p1, v1, v2}, Lkp;->a(Lld;Landroid/content/Context;)V

    goto :goto_0

    .line 78
    :cond_6
    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkc;->a(Landroid/content/Context;Lkp;)V

    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    iget-object v2, p2, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    .line 74
    invoke-virtual {p1, v2, v1}, Lrq;->a(Landroid/content/Context;Lkp;)V

    .line 75
    invoke-virtual {v0}, Lkc;->b()V

    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    .line 76
    invoke-virtual {p1}, Lrq;->b()V

    .line 72
    :goto_0
    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p2, Landroid/support/v7/widget/Toolbar;->j:I

    .line 77
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActionMenuView;->a(I)V

    iget-object p1, p2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 78
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->a(Lmc;)V

    iput-object v0, p2, Landroid/support/v7/widget/Toolbar;->r:Lmc;

    return-void
.end method

.method public final a(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lrw;->c:Landroid/view/Window$Callback;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lrw;->j:Z

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lrw;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iput-boolean p1, v0, Landroid/support/v7/widget/Toolbar;->t:Z

    .line 55
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 49
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 80
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->s:Lrq;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lrq;->b:Lks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 47
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 52
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final f()V
    .locals 2

    .line 51
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 46
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 54
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 4

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->c:Lmc;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lmc;->k:Llx;

    if-nez v3, :cond_1

    .line 53
    invoke-virtual {v0}, Lmc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    .line 86
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->c:Lmc;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lmc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrw;->d:Z

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lrw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->b()V

    :cond_0
    return-void
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lrw;->e:I

    return v0
.end method

.method public final o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q()V
    .locals 0

    return-void
.end method
