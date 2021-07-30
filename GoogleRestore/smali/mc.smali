.class public final Lmc;
.super Lkc;
.source "PG"


# instance fields
.field g:Llz;

.field public h:I

.field i:Lma;

.field public j:Llw;

.field k:Llx;

.field final l:Lmb;

.field m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private final s:Landroid/util/SparseBooleanArray;

.field private t:Lkb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkc;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 2
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lmc;->s:Landroid/util/SparseBooleanArray;

    new-instance p1, Lmb;

    .line 3
    invoke-direct {p1, p0}, Lmb;-><init>(Lmc;)V

    iput-object p1, p0, Lmc;->l:Lmb;

    return-void
.end method


# virtual methods
.method public final a(Lks;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 33
    invoke-virtual {p1}, Lks;->getActionView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lks;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    goto :goto_2

    .line 35
    :cond_1
    :goto_0
    instance-of v0, p2, Lle;

    if-eqz v0, :cond_2

    .line 37
    check-cast p2, Lle;

    goto :goto_1

    .line 47
    :cond_2
    iget-object p2, p0, Lkc;->d:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0002

    .line 36
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lle;

    .line 38
    :goto_1
    invoke-interface {p2, p1}, Lle;->a(Lks;)V

    iget-object v0, p0, Lmc;->f:Llf;

    .line 39
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 40
    move-object v2, p2

    check-cast v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    iput-object v0, v2, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Lko;

    iget-object v0, p0, Lmc;->t:Lkb;

    if-nez v0, :cond_3

    new-instance v0, Lkb;

    .line 41
    invoke-direct {v0, p0}, Lkb;-><init>(Lmc;)V

    iput-object v0, p0, Lmc;->t:Lkb;

    :cond_3
    iget-object v0, p0, Lmc;->t:Lkb;

    iput-object v0, v2, Landroid/support/v7/view/menu/ActionMenuItemView;->d:Lkb;

    .line 42
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    :goto_2
    const/4 p2, 0x1

    iget-boolean p1, p1, Lks;->p:Z

    if-eq p2, p1, :cond_4

    goto :goto_3

    .line 47
    :cond_4
    const/16 v1, 0x8

    .line 43
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 46
    instance-of p2, p1, Lmf;

    if-nez p2, :cond_5

    .line 47
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/view/ViewGroup$LayoutParams;)Lmf;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-object v0
.end method

.method public final a(Landroid/content/Context;Lkp;)V
    .locals 2

    iput-object p1, p0, Lkc;->b:Landroid/content/Context;

    iget-object v0, p0, Lkc;->b:Landroid/content/Context;

    .line 51
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    iput-object p2, p0, Lkc;->c:Lkp;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 53
    invoke-static {p1}, Ljm;->a(Landroid/content/Context;)Ljm;

    move-result-object p1

    iget-boolean v0, p0, Lmc;->o:Z

    if-nez v0, :cond_0

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmc;->n:Z

    :cond_0
    iget-object v0, p1, Ljm;->a:Landroid/content/Context;

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmc;->p:I

    .line 56
    invoke-virtual {p1}, Ljm;->a()I

    move-result p1

    iput p1, p0, Lmc;->h:I

    iget p1, p0, Lmc;->p:I

    iget-boolean v0, p0, Lmc;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmc;->g:Llz;

    if-nez v0, :cond_1

    new-instance v0, Llz;

    iget-object v1, p0, Lmc;->a:Landroid/content/Context;

    .line 57
    invoke-direct {v0, p0, v1}, Llz;-><init>(Lmc;Landroid/content/Context;)V

    iput-object v0, p0, Lmc;->g:Llz;

    .line 58
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lmc;->g:Llz;

    .line 59
    invoke-virtual {v1, v0, v0}, Llz;->measure(II)V

    :cond_1
    iget-object v0, p0, Lmc;->g:Llz;

    .line 60
    invoke-virtual {v0}, Llz;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lmc;->g:Llz;

    .line 60
    :goto_0
    iput p1, p0, Lmc;->q:I

    .line 61
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return-void
.end method

.method public final a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    iput-object p1, p0, Lmc;->f:Llf;

    iget-object v0, p0, Lmc;->c:Lkp;

    iput-object v0, p1, Landroid/support/v7/widget/ActionMenuView;->a:Lkp;

    return-void
.end method

.method public final a(Lkp;Z)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lmc;->f()V

    iget-object v0, p0, Lkc;->e:Llc;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1, p2}, Llc;->a(Lkp;Z)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lmc;->c:Lkp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lkp;->g()Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    .line 32
    :cond_0
    move-object v1, v2

    const/4 v4, 0x0

    .line 7
    :goto_0
    iget v5, v0, Lmc;->h:I

    iget v6, v0, Lmc;->q:I

    .line 8
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Lmc;->f:Llf;

    .line 9
    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x1

    if-ge v9, v4, :cond_4

    .line 10
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lks;

    .line 11
    invoke-virtual {v14}, Lks;->h()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {v14}, Lks;->g()Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    .line 11
    :goto_2
    iget-boolean v13, v0, Lmc;->r:Z

    if-eqz v13, :cond_3

    iget-boolean v13, v14, Lks;->p:Z

    if-eqz v13, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-boolean v9, v0, Lmc;->n:Z

    if-eqz v9, :cond_6

    if-nez v10, :cond_5

    add-int/2addr v12, v11

    if-le v12, v5, :cond_6

    :cond_5
    add-int/lit8 v5, v5, -0x1

    :cond_6
    sub-int/2addr v5, v11

    iget-object v9, v0, Lmc;->s:Landroid/util/SparseBooleanArray;

    .line 13
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v10, v4, :cond_15

    .line 14
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lks;

    .line 15
    invoke-virtual {v12}, Lks;->h()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 16
    invoke-virtual {v0, v12, v2, v8}, Lkc;->a(Lks;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 17
    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    .line 18
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v6, v14

    if-nez v11, :cond_7

    move v11, v14

    goto :goto_4

    .line 20
    :cond_7
    nop

    .line 18
    :goto_4
    iget v14, v12, Lks;->b:I

    if-eqz v14, :cond_8

    .line 19
    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_8
    nop

    .line 20
    invoke-virtual {v12, v13}, Lks;->d(Z)V

    const/4 v2, 0x0

    goto/16 :goto_b

    .line 21
    :cond_9
    invoke-virtual {v12}, Lks;->g()Z

    move-result v14

    if-eqz v14, :cond_14

    iget v14, v12, Lks;->b:I

    .line 22
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v5, :cond_a

    if-eqz v15, :cond_b

    :cond_a
    if-lez v6, :cond_b

    const/16 v16, 0x1

    goto :goto_5

    .line 29
    :cond_b
    const/16 v16, 0x0

    .line 22
    :goto_5
    if-eqz v16, :cond_e

    .line 23
    invoke-virtual {v0, v12, v2, v8}, Lkc;->a(Lks;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v6, v3

    if-nez v11, :cond_c

    move v11, v3

    goto :goto_6

    .line 29
    :cond_c
    nop

    .line 25
    :goto_6
    add-int v3, v6, v11

    if-lez v3, :cond_d

    const/16 v16, 0x1

    goto :goto_7

    .line 29
    :cond_d
    const/16 v16, 0x0

    .line 25
    :goto_7
    move/from16 v3, v16

    goto :goto_8

    .line 29
    :cond_e
    move/from16 v3, v16

    .line 25
    :goto_8
    if-eqz v3, :cond_f

    if-eqz v14, :cond_f

    .line 30
    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_a

    .line 31
    :cond_f
    if-eqz v15, :cond_12

    .line 26
    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v10, :cond_12

    .line 27
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lks;

    iget v13, v2, Lks;->b:I

    if-ne v13, v14, :cond_11

    .line 28
    invoke-virtual {v2}, Lks;->f()Z

    move-result v13

    if-eqz v13, :cond_10

    add-int/lit8 v5, v5, 0x1

    .line 29
    :cond_10
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lks;->d(Z)V

    :cond_11
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v13, 0x1

    goto :goto_9

    .line 30
    :cond_12
    :goto_a
    if-eqz v3, :cond_13

    add-int/lit8 v5, v5, -0x1

    .line 31
    :cond_13
    invoke-virtual {v12, v3}, Lks;->d(Z)V

    const/4 v2, 0x0

    goto :goto_b

    .line 29
    :cond_14
    nop

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lks;->d(Z)V

    .line 20
    :goto_b
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 32
    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method public final a(Lll;)Z
    .locals 8

    .line 65
    invoke-virtual {p1}, Lkp;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v0, p1

    :goto_0
    iget-object v2, v0, Lll;->j:Lkp;

    iget-object v3, p0, Lmc;->c:Lkp;

    if-eq v2, v3, :cond_0

    .line 66
    move-object v0, v2

    check-cast v0, Lll;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lll;->k:Lks;

    iget-object v2, p0, Lmc;->f:Llf;

    .line 67
    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 69
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 70
    instance-of v7, v6, Lle;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lle;

    .line 71
    invoke-interface {v7}, Lle;->a()Lks;

    move-result-object v7

    if-ne v7, v0, :cond_2

    move-object v3, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 67
    :goto_2
    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-object v0, p1, Lll;->k:Lks;

    iget v0, v0, Lks;->a:I

    iput v0, p0, Lmc;->m:I

    .line 72
    invoke-virtual {p1}, Lkp;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    const/4 v4, 0x1

    if-ge v2, v0, :cond_6

    .line 73
    invoke-virtual {p1, v2}, Lkp;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 74
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    .line 78
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 74
    :goto_4
    new-instance v0, Llw;

    iget-object v2, p0, Lmc;->b:Landroid/content/Context;

    .line 75
    invoke-direct {v0, p0, v2, p1, v3}, Llw;-><init>(Lmc;Landroid/content/Context;Lll;Landroid/view/View;)V

    iput-object v0, p0, Lmc;->j:Llw;

    .line 76
    invoke-virtual {v0, v1}, Llb;->a(Z)V

    iget-object v0, p0, Lmc;->j:Llw;

    .line 77
    invoke-virtual {v0}, Llb;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lkc;->e:Llc;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_5

    .line 78
    :cond_7
    iget-object p1, p0, Lkc;->c:Lkp;

    :goto_5
    invoke-interface {v0, p1}, Llc;->a(Lkp;)Z

    :cond_8
    return v4

    .line 71
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return v1
.end method

.method public final b()V
    .locals 11

    iget-object v0, p0, Lkc;->f:Llf;

    .line 85
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 111
    :cond_0
    iget-object v3, p0, Lkc;->c:Lkp;

    if-eqz v3, :cond_6

    .line 86
    invoke-virtual {v3}, Lkp;->h()V

    iget-object v3, p0, Lkc;->c:Lkp;

    .line 87
    invoke-virtual {v3}, Lkp;->g()Ljava/util/ArrayList;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    .line 89
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lks;

    .line 90
    invoke-virtual {v7}, Lks;->f()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 91
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 92
    instance-of v9, v8, Lle;

    if-eqz v9, :cond_1

    .line 93
    move-object v9, v8

    check-cast v9, Lle;

    invoke-interface {v9}, Lle;->a()Lks;

    move-result-object v9

    goto :goto_1

    .line 99
    :cond_1
    move-object v9, v1

    .line 94
    :goto_1
    invoke-virtual {p0, v7, v8, v0}, Lkc;->a(Lks;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    if-eq v7, v9, :cond_2

    .line 95
    invoke-virtual {v10, v2}, Landroid/view/View;->setPressed(Z)V

    .line 96
    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v10, v8, :cond_4

    .line 97
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    .line 98
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v7, p0, Lkc;->f:Llf;

    .line 99
    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    :cond_6
    const/4 v6, 0x0

    .line 100
    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v6, v3, :cond_9

    .line 101
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmc;->g:Llz;

    if-ne v3, v4, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 102
    :cond_8
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_2

    .line 85
    :cond_9
    :goto_3
    iget-object v0, p0, Lmc;->f:Llf;

    .line 103
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lmc;->c:Lkp;

    if-eqz v0, :cond_a

    .line 104
    invoke-virtual {v0}, Lkp;->h()V

    iget-object v0, v0, Lkp;->d:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_a

    .line 106
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lks;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lmc;->c:Lkp;

    if-eqz v0, :cond_b

    .line 107
    invoke-virtual {v0}, Lkp;->i()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_5

    .line 111
    :cond_b
    nop

    .line 107
    :goto_5
    iget-boolean v0, p0, Lmc;->n:Z

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_c

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lks;

    iget-boolean v0, v0, Lks;->p:Z

    xor-int/lit8 v2, v0, 0x1

    goto :goto_6

    .line 118
    :cond_c
    if-lez v0, :cond_d

    const/4 v2, 0x1

    .line 109
    :cond_d
    :goto_6
    if-eqz v2, :cond_10

    iget-object v0, p0, Lmc;->g:Llz;

    if-nez v0, :cond_e

    new-instance v0, Llz;

    iget-object v1, p0, Lmc;->a:Landroid/content/Context;

    .line 112
    invoke-direct {v0, p0, v1}, Llz;-><init>(Lmc;Landroid/content/Context;)V

    iput-object v0, p0, Lmc;->g:Llz;

    :cond_e
    iget-object v0, p0, Lmc;->g:Llz;

    .line 113
    invoke-virtual {v0}, Llz;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmc;->f:Llf;

    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_f

    iget-object v1, p0, Lmc;->g:Llz;

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    iget-object v0, p0, Lmc;->f:Llf;

    .line 115
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Lmc;->g:Llz;

    .line 116
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->d()Lmf;

    move-result-object v2

    iput-boolean v3, v2, Lmf;->a:Z

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 118
    :cond_10
    iget-object v0, p0, Lmc;->g:Llz;

    if-eqz v0, :cond_11

    .line 110
    invoke-virtual {v0}, Llz;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lmc;->f:Llf;

    if-ne v0, v1, :cond_11

    .line 111
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lmc;->g:Llz;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    :cond_11
    :goto_7
    iget-object v0, p0, Lmc;->f:Llf;

    .line 118
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Lmc;->n:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->b:Z

    return-void
.end method

.method public final c()Z
    .locals 4

    iget-boolean v0, p0, Lmc;->n:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lmc;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmc;->c:Lkp;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmc;->f:Llf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmc;->k:Llx;

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {v0}, Lkp;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lma;

    iget-object v1, p0, Lmc;->b:Landroid/content/Context;

    iget-object v2, p0, Lmc;->c:Lkp;

    iget-object v3, p0, Lmc;->g:Llz;

    .line 82
    invoke-direct {v0, p0, v1, v2, v3}, Lma;-><init>(Lmc;Landroid/content/Context;Lkp;Landroid/view/View;)V

    new-instance v1, Llx;

    .line 83
    invoke-direct {v1, p0, v0}, Llx;-><init>(Lmc;Lma;)V

    iput-object v1, p0, Lmc;->k:Llx;

    iget-object v0, p0, Lmc;->f:Llf;

    .line 84
    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lmc;->k:Llx;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Lmc;->k:Llx;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lmc;->f:Llf;

    if-nez v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmc;->k:Llx;

    return v1

    .line 0
    :cond_1
    :goto_0
    iget-object v0, p0, Lmc;->i:Lma;

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {v0}, Llb;->c()V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lmc;->i:Lma;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Llb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lmc;->d()Z

    .line 5
    invoke-virtual {p0}, Lmc;->i()V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmc;->r:Z

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmc;->n:Z

    iput-boolean v0, p0, Lmc;->o:Z

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lmc;->j:Llw;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Llb;->c()V

    :cond_0
    return-void
.end method
