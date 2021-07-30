.class public final Lkj;
.super Lkz;
.source "PG"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lld;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/List;

.field final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field d:Landroid/view/View;

.field e:Landroid/view/ViewTreeObserver;

.field f:Z

.field private final h:Landroid/content/Context;

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:Ljava/util/List;

.field private final m:Landroid/view/View$OnAttachStateChangeListener;

.field private final n:Lpq;

.field private o:I

.field private p:I

.field private q:Landroid/view/View;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Llc;

.field private z:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 1

    invoke-direct {p0}, Lkz;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkj;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkj;->b:Ljava/util/List;

    new-instance v0, Lke;

    .line 3
    invoke-direct {v0, p0}, Lke;-><init>(Lkj;)V

    iput-object v0, p0, Lkj;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4
    new-instance v0, Lkf;

    invoke-direct {v0, p0}, Lkf;-><init>(Lkj;)V

    iput-object v0, p0, Lkj;->m:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Lkh;

    .line 5
    invoke-direct {v0, p0}, Lkh;-><init>(Lkj;)V

    iput-object v0, p0, Lkj;->n:Lpq;

    const/4 v0, 0x0

    iput v0, p0, Lkj;->o:I

    iput v0, p0, Lkj;->p:I

    iput-object p1, p0, Lkj;->h:Landroid/content/Context;

    iput-object p2, p0, Lkj;->q:Landroid/view/View;

    iput p3, p0, Lkj;->j:I

    iput-boolean p4, p0, Lkj;->k:Z

    iput-boolean v0, p0, Lkj;->w:Z

    .line 6
    invoke-direct {p0}, Lkj;->h()I

    move-result p2

    iput p2, p0, Lkj;->r:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    .line 9
    const p3, 0x7f070017

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 8
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lkj;->i:I

    new-instance p1, Landroid/os/Handler;

    .line 10
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lkj;->a:Landroid/os/Handler;

    return-void
.end method

.method private final c(Lkp;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lkj;->h:Landroid/content/Context;

    .line 72
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v0, Lkm;

    iget-boolean v4, v1, Lkj;->k:Z

    .line 73
    const v5, 0x7f0d000b

    invoke-direct {v0, v2, v3, v4, v5}, Lkm;-><init>(Lkp;Landroid/view/LayoutInflater;ZI)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lkj;->e()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-boolean v4, v1, Lkj;->w:Z

    if-eqz v4, :cond_0

    iput-boolean v5, v0, Lkm;->b:Z

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lkj;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    invoke-static/range {p1 .. p1}, Lkz;->b(Lkp;)Z

    move-result v4

    iput-boolean v4, v0, Lkm;->b:Z

    .line 74
    :cond_1
    :goto_0
    iget-object v4, v1, Lkj;->h:Landroid/content/Context;

    iget v6, v1, Lkj;->i:I

    .line 77
    invoke-static {v0, v4, v6}, Lkj;->a(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v4

    .line 78
    new-instance v6, Lps;

    iget-object v7, v1, Lkj;->h:Landroid/content/Context;

    iget v8, v1, Lkj;->j:I

    invoke-direct {v6, v7, v8}, Lps;-><init>(Landroid/content/Context;I)V

    iget-object v7, v1, Lkj;->n:Lpq;

    iput-object v7, v6, Lps;->b:Lpq;

    iput-object v1, v6, Lpp;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 79
    invoke-virtual {v6, v1}, Lpp;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v7, v1, Lkj;->q:Landroid/view/View;

    iput-object v7, v6, Lpp;->l:Landroid/view/View;

    iget v7, v1, Lkj;->p:I

    iput v7, v6, Lpp;->j:I

    .line 80
    invoke-virtual {v6}, Lpp;->l()V

    .line 81
    invoke-virtual {v6}, Lpp;->k()V

    .line 82
    invoke-virtual {v6, v0}, Lpp;->a(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-virtual {v6, v4}, Lpp;->d(I)V

    iget v0, v1, Lkj;->p:I

    iput v0, v6, Lpp;->j:I

    iget-object v0, v1, Lkj;->b:Ljava/util/List;

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, -0x1

    const/4 v9, 0x0

    if-lez v0, :cond_b

    iget-object v0, v1, Lkj;->b:Ljava/util/List;

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v7

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki;

    .line 86
    iget-object v10, v0, Lki;->b:Lkp;

    .line 87
    invoke-virtual {v10}, Lkp;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_3

    .line 88
    invoke-virtual {v10, v12}, Lkp;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 89
    invoke-interface {v13}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    if-ne v2, v14, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    .line 89
    :goto_2
    if-nez v13, :cond_4

    const/4 v8, 0x0

    goto :goto_6

    .line 90
    :cond_4
    invoke-virtual {v0}, Lki;->a()Landroid/widget/ListView;

    move-result-object v10

    .line 91
    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 92
    instance-of v12, v11, Landroid/widget/HeaderViewListAdapter;

    if-eqz v12, :cond_5

    .line 93
    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    .line 94
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v12

    .line 95
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lkm;

    goto :goto_3

    .line 96
    :cond_5
    check-cast v11, Lkm;

    const/4 v12, 0x0

    .line 97
    :goto_3
    invoke-virtual {v11}, Lkm;->getCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_7

    .line 98
    invoke-virtual {v11, v15}, Lkm;->a(I)Lks;

    move-result-object v8

    if-ne v13, v8, :cond_6

    goto :goto_5

    .line 101
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, -0x1

    .line 98
    :goto_5
    if-ne v15, v7, :cond_8

    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    add-int/2addr v15, v12

    .line 99
    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v15, v8

    if-ltz v15, :cond_a

    .line 100
    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-lt v15, v8, :cond_9

    const/4 v8, 0x0

    goto :goto_6

    .line 101
    :cond_9
    invoke-virtual {v10, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    .line 89
    :goto_6
    move-object v10, v8

    move-object v8, v0

    goto :goto_7

    .line 96
    :cond_b
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 89
    :goto_7
    if-eqz v10, :cond_14

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-gt v0, v11, :cond_c

    sget-object v0, Lps;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    :try_start_0
    sget-object v0, Lps;->a:Ljava/lang/reflect/Method;

    iget-object v11, v6, Lps;->q:Landroid/widget/PopupWindow;

    new-array v12, v5, [Ljava/lang/Object;

    .line 103
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v0, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 76
    :catch_0
    move-exception v0

    .line 104
    const-string v0, "MenuPopupWindow"

    const-string v11, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 116
    :cond_c
    iget-object v0, v6, Lps;->q:Landroid/widget/PopupWindow;

    .line 105
    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 106
    :cond_d
    :goto_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, v6, Lps;->q:Landroid/widget/PopupWindow;

    .line 107
    const/4 v11, 0x0

    move-object v12, v11

    check-cast v12, Landroid/transition/Transition;

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    iget-object v0, v1, Lkj;->b:Ljava/util/List;

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v7

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki;

    invoke-virtual {v0}, Lki;->a()Landroid/widget/ListView;

    move-result-object v0

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 109
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v11, Landroid/graphics/Rect;

    .line 110
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v12, v1, Lkj;->d:Landroid/view/View;

    .line 111
    invoke-virtual {v12, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v12, v1, Lkj;->r:I

    if-ne v12, v5, :cond_e

    aget v7, v7, v9

    .line 112
    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v7, v0

    add-int/2addr v7, v4

    .line 113
    iget v0, v11, Landroid/graphics/Rect;->right:I

    if-le v7, v0, :cond_f

    const/4 v0, 0x0

    goto :goto_9

    .line 116
    :cond_e
    aget v0, v7, v9

    sub-int/2addr v0, v4

    if-gez v0, :cond_10

    :cond_f
    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    .line 113
    :goto_9
    iput v0, v1, Lkj;->r:I

    .line 114
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    iput-object v10, v6, Lpp;->l:Landroid/view/View;

    iget v7, v1, Lkj;->p:I

    const/4 v11, 0x5

    and-int/2addr v7, v11

    if-ne v7, v11, :cond_12

    if-eqz v0, :cond_11

    goto :goto_a

    .line 115
    :cond_11
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v4, v0

    goto :goto_a

    :cond_12
    if-eqz v0, :cond_13

    .line 116
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_a

    :cond_13
    neg-int v4, v4

    .line 114
    :goto_a
    iput v4, v6, Lpp;->g:I

    iput-boolean v5, v6, Lpp;->i:Z

    iput-boolean v5, v6, Lpp;->h:Z

    .line 117
    invoke-virtual {v6, v9}, Lpp;->a(I)V

    goto :goto_b

    .line 105
    :cond_14
    iget-boolean v0, v1, Lkj;->s:Z

    if-eqz v0, :cond_15

    iget v0, v1, Lkj;->u:I

    iput v0, v6, Lpp;->g:I

    :cond_15
    iget-boolean v0, v1, Lkj;->t:Z

    if-eqz v0, :cond_16

    iget v0, v1, Lkj;->v:I

    .line 118
    invoke-virtual {v6, v0}, Lpp;->a(I)V

    :cond_16
    iget-object v0, v1, Lkz;->g:Landroid/graphics/Rect;

    .line 119
    invoke-virtual {v6, v0}, Lpp;->a(Landroid/graphics/Rect;)V

    .line 117
    :goto_b
    new-instance v0, Lki;

    iget v4, v1, Lkj;->r:I

    .line 120
    invoke-direct {v0, v6, v2, v4}, Lki;-><init>(Lps;Lkp;I)V

    iget-object v4, v1, Lkj;->b:Ljava/util/List;

    .line 121
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v6}, Lpp;->S()V

    iget-object v0, v6, Lpp;->e:Lok;

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v8, :cond_17

    iget-boolean v4, v1, Lkj;->x:Z

    if-eqz v4, :cond_17

    iget-object v4, v2, Lkp;->e:Ljava/lang/CharSequence;

    if-eqz v4, :cond_17

    const v4, 0x7f0d0012

    .line 124
    invoke-virtual {v3, v4, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x1020016

    .line 125
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 126
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v2, v2, Lkp;->e:Ljava/lang/CharSequence;

    .line 127
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 129
    invoke-virtual {v6}, Lpp;->S()V

    :cond_17
    return-void
.end method

.method private final h()I
    .locals 2

    iget-object v0, p0, Lkj;->q:Landroid/view/View;

    .line 20
    invoke-static {v0}, Lge;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final S()V
    .locals 4

    .line 65
    invoke-virtual {p0}, Lkj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkj;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 66
    check-cast v3, Lkp;

    .line 67
    invoke-direct {p0, v3}, Lkj;->c(Lkp;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkj;->l:Ljava/util/List;

    .line 68
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lkj;->q:Landroid/view/View;

    iput-object v0, p0, Lkj;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lkj;->e:Landroid/view/ViewTreeObserver;

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lkj;->e:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    iget-object v1, p0, Lkj;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lkj;->d:Landroid/view/View;

    iget-object v1, p0, Lkj;->m:Landroid/view/View$OnAttachStateChangeListener;

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_3
    return-void
.end method

.method public final T()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki;

    invoke-virtual {v0}, Lki;->a()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lkj;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lkj;->o:I

    iget-object v0, p0, Lkj;->q:Landroid/view/View;

    .line 63
    invoke-static {v0}, Lge;->g(Landroid/view/View;)I

    move-result v0

    .line 64
    invoke-static {p1, v0}, Ley;->a(II)I

    move-result p1

    iput p1, p0, Lkj;->p:I

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lkj;->q:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lkj;->q:Landroid/view/View;

    iget v0, p0, Lkj;->o:I

    .line 61
    invoke-static {p1}, Lge;->g(Landroid/view/View;)I

    move-result p1

    .line 62
    invoke-static {v0, p1}, Ley;->a(II)I

    move-result p1

    iput p1, p0, Lkj;->p:I

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lkj;->z:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final a(Lkp;)V
    .locals 1

    iget-object v0, p0, Lkj;->h:Landroid/content/Context;

    .line 11
    invoke-virtual {p1, p0, v0}, Lkp;->a(Lld;Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Lkj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-direct {p0, p1}, Lkj;->c(Lkp;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkj;->l:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lkp;Z)V
    .locals 5

    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lkj;->b:Ljava/util/List;

    .line 25
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lki;

    .line 26
    iget-object v3, v3, Lki;->b:Lkp;

    if-eq p1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, -0x1

    .line 26
    :cond_1
    if-gez v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lkj;->b:Ljava/util/List;

    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lkj;->b:Ljava/util/List;

    .line 28
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki;

    .line 29
    iget-object v0, v0, Lki;->b:Lkp;

    invoke-virtual {v0, v1}, Lkp;->a(Z)V

    :cond_3
    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki;

    .line 31
    iget-object v2, v0, Lki;->b:Lkp;

    invoke-virtual {v2, p0}, Lkp;->b(Lld;)V

    iget-boolean v2, p0, Lkj;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 32
    iget-object v2, v0, Lki;->a:Lps;

    .line 33
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, v2, Lps;->q:Landroid/widget/PopupWindow;

    .line 34
    move-object v4, v3

    check-cast v4, Landroid/transition/Transition;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 35
    iget-object v2, v0, Lki;->a:Lps;

    iget-object v2, v2, Lpp;->q:Landroid/widget/PopupWindow;

    .line 36
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 37
    :cond_4
    iget-object v0, v0, Lki;->a:Lps;

    invoke-virtual {v0}, Lpp;->d()V

    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v2, p0, Lkj;->b:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    .line 39
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lki;

    iget v2, v2, Lki;->c:I

    iput v2, p0, Lkj;->r:I

    goto :goto_1

    .line 40
    :cond_5
    invoke-direct {p0}, Lkj;->h()I

    move-result v2

    iput v2, p0, Lkj;->r:I

    .line 39
    :goto_1
    if-nez v0, :cond_9

    .line 41
    invoke-virtual {p0}, Lkj;->d()V

    iget-object p2, p0, Lkj;->y:Llc;

    if-eqz p2, :cond_6

    .line 42
    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Llc;->a(Lkp;Z)V

    :cond_6
    iget-object p1, p0, Lkj;->e:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_8

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lkj;->e:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lkj;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_7
    iput-object v3, p0, Lkj;->e:Landroid/view/ViewTreeObserver;

    :cond_8
    iget-object p1, p0, Lkj;->d:Landroid/view/View;

    iget-object p2, p0, Lkj;->m:Landroid/view/View$OnAttachStateChangeListener;

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lkj;->z:Landroid/widget/PopupWindow$OnDismissListener;

    .line 46
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void

    :cond_9
    if-eqz p2, :cond_a

    iget-object p1, p0, Lkj;->b:Ljava/util/List;

    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lki;

    .line 48
    iget-object p1, p1, Lki;->b:Lkp;

    invoke-virtual {p1, v1}, Lkp;->a(Z)V

    :cond_a
    return-void
.end method

.method public final a(Llc;)V
    .locals 0

    iput-object p1, p0, Lkj;->y:Llc;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lkj;->w:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lll;)Z
    .locals 7

    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 55
    check-cast v5, Lki;

    add-int/lit8 v3, v3, 0x1

    .line 56
    iget-object v6, v5, Lki;->b:Lkp;

    if-ne p1, v6, :cond_0

    .line 57
    invoke-virtual {v5}, Lki;->a()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v4

    .line 58
    :cond_1
    invoke-virtual {p1}, Lkp;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {p0, p1}, Lkj;->a(Lkp;)V

    iget-object v0, p0, Lkj;->y:Llc;

    if-eqz v0, :cond_2

    .line 60
    invoke-interface {v0, p1}, Llc;->a(Lkp;)Z

    :cond_2
    return v4

    :cond_3
    return v2
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 130
    check-cast v3, Lki;

    .line 131
    invoke-virtual {v3}, Lki;->a()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-static {v3}, Lkj;->a(Landroid/widget/ListAdapter;)Lkm;

    move-result-object v3

    invoke-virtual {v3}, Lkm;->notifyDataSetChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkj;->s:Z

    iput p1, p0, Lkj;->u:I

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lkj;->x:Z

    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkj;->t:Z

    iput p1, p0, Lkj;->v:I

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lkj;->b:Ljava/util/List;

    new-array v2, v0, [Lki;

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lki;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 17
    aget-object v2, v1, v0

    .line 18
    iget-object v3, v2, Lki;->a:Lps;

    invoke-virtual {v3}, Lpp;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    iget-object v2, v2, Lki;->a:Lps;

    invoke-virtual {v2}, Lpp;->d()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki;

    iget-object v0, v0, Lki;->a:Lps;

    invoke-virtual {v0}, Lpp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onDismiss()V
    .locals 5

    iget-object v0, p0, Lkj;->b:Ljava/util/List;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lkj;->b:Ljava/util/List;

    .line 50
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lki;

    .line 51
    iget-object v4, v3, Lki;->a:Lps;

    invoke-virtual {v4}, Lpp;->e()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 51
    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, v3, Lki;->b:Lkp;

    .line 52
    invoke-virtual {v0, v1}, Lkp;->a(Z)V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 53
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lkj;->d()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
