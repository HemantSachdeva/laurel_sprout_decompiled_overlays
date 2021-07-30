.class final Lyr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final a:Lyo;

.field final b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lyo;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyr;->a:Lyo;

    iput-object p2, p0, Lyr;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method private final a()V
    .locals 1

    iget-object v0, p0, Lyr;->b:Landroid/view/ViewGroup;

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lyr;->b:Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lyr;->a()V

    .line 2
    sget-object v1, Lys;->a:Ljava/util/ArrayList;

    iget-object v2, v0, Lyr;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {}, Lys;->a()Lth;

    move-result-object v1

    iget-object v3, v0, Lyr;->b:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v1, v3}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lyr;->b:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v1, v5, v3}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 6
    :goto_0
    iget-object v6, v0, Lyr;->a:Lyo;

    .line 9
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lyr;->a:Lyo;

    new-instance v6, Lyq;

    .line 10
    invoke-direct {v6, v0, v1}, Lyq;-><init>(Lyr;Lth;)V

    invoke-virtual {v3, v6}, Lyo;->a(Lyn;)V

    iget-object v1, v0, Lyr;->a:Lyo;

    iget-object v3, v0, Lyr;->b:Landroid/view/ViewGroup;

    .line 11
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Lyo;->a(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 12
    check-cast v7, Lyo;

    iget-object v8, v0, Lyr;->b:Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v7, v8}, Lyo;->c(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lyr;->a:Lyo;

    iget-object v8, v0, Lyr;->b:Landroid/view/ViewGroup;

    new-instance v3, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lyo;->i:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lyo;->j:Ljava/util/ArrayList;

    iget-object v3, v1, Lyo;->e:Lyy;

    iget-object v5, v1, Lyo;->f:Lyy;

    new-instance v7, Lth;

    .line 16
    iget-object v9, v3, Lyy;->a:Lth;

    invoke-direct {v7, v9}, Lth;-><init>(Lto;)V

    new-instance v9, Lth;

    .line 17
    iget-object v10, v5, Lyy;->a:Lth;

    invoke-direct {v9, v10}, Lth;-><init>(Lto;)V

    const/4 v10, 0x0

    :goto_2
    iget-object v11, v1, Lyo;->h:[I

    .line 18
    array-length v12, v11

    if-ge v10, v12, :cond_10

    .line 19
    aget v11, v11, v10

    if-eq v11, v2, :cond_d

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    const/4 v12, 0x3

    if-eq v11, v12, :cond_9

    const/4 v12, 0x4

    if-eq v11, v12, :cond_4

    move-object v4, v5

    goto/16 :goto_8

    .line 27
    :cond_4
    iget-object v11, v3, Lyy;->c:Ltm;

    iget-object v12, v5, Lyy;->c:Ltm;

    .line 28
    invoke-virtual {v11}, Ltm;->c()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_8

    .line 29
    invoke-virtual {v11, v14}, Ltm;->b(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_6

    .line 30
    invoke-virtual {v1, v15}, Lyo;->a(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 31
    move-object/from16 v17, v5

    invoke-virtual {v11, v14}, Ltm;->a(I)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ltm;->a(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_7

    .line 32
    invoke-virtual {v1, v4}, Lyo;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 33
    invoke-virtual {v7, v15}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyx;

    .line 34
    invoke-virtual {v9, v4}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Lyx;

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    iget-object v2, v1, Lyo;->i:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lyo;->j:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v7, v15}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v9, v4}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 30
    :cond_5
    move-object/from16 v17, v5

    goto :goto_4

    .line 29
    :cond_6
    move-object/from16 v17, v5

    .line 38
    :cond_7
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v17

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_3

    .line 28
    :cond_8
    move-object/from16 v17, v5

    move-object/from16 v4, v17

    goto/16 :goto_8

    .line 39
    :cond_9
    move-object/from16 v17, v5

    iget-object v2, v3, Lyy;->b:Landroid/util/SparseArray;

    move-object/from16 v4, v17

    iget-object v5, v4, Lyy;->b:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v6, :cond_f

    .line 41
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_a

    .line 42
    invoke-virtual {v1, v12}, Lyo;->a(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 43
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_a

    .line 44
    invoke-virtual {v1, v13}, Lyo;->a(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 45
    invoke-virtual {v7, v12}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyx;

    .line 46
    invoke-virtual {v9, v13}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyx;

    if-eqz v14, :cond_a

    if-eqz v15, :cond_a

    iget-object v0, v1, Lyo;->i:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lyo;->j:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v7, v12}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v9, v13}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    .line 51
    :cond_b
    move-object v4, v5

    iget-object v0, v3, Lyy;->d:Lth;

    iget-object v2, v4, Lyy;->d:Lth;

    iget v5, v0, Lto;->j:I

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_f

    .line 52
    invoke-virtual {v0, v6}, Lto;->c(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_c

    .line 53
    invoke-virtual {v1, v11}, Lyo;->a(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 54
    invoke-virtual {v0, v6}, Lto;->b(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v12}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_c

    .line 55
    invoke-virtual {v1, v12}, Lyo;->a(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 56
    invoke-virtual {v7, v11}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyx;

    .line 57
    invoke-virtual {v9, v12}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyx;

    if-eqz v13, :cond_c

    if-eqz v14, :cond_c

    iget-object v15, v1, Lyo;->i:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lyo;->j:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v7, v11}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v9, v12}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 19
    :cond_d
    move-object v4, v5

    iget v0, v7, Lto;->j:I

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_f

    .line 20
    invoke-virtual {v7, v0}, Lto;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_e

    .line 21
    invoke-virtual {v1, v2}, Lyo;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 22
    invoke-virtual {v9, v2}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyx;

    if-eqz v2, :cond_e

    iget-object v5, v2, Lyx;->b:Landroid/view/View;

    .line 23
    invoke-virtual {v1, v5}, Lyo;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 24
    invoke-virtual {v7, v0}, Lto;->d(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyx;

    iget-object v6, v1, Lyo;->i:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lyo;->j:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 19
    :cond_f
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v5, v4

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 61
    :cond_10
    const/4 v0, 0x0

    :goto_9
    iget v2, v7, Lto;->j:I

    if-ge v0, v2, :cond_12

    .line 62
    invoke-virtual {v7, v0}, Lto;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyx;

    .line 63
    iget-object v3, v2, Lyx;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Lyo;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v1, Lyo;->i:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lyo;->j:Ljava/util/ArrayList;

    .line 65
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_12
    const/4 v6, 0x0

    :goto_a
    iget v0, v9, Lto;->j:I

    if-ge v6, v0, :cond_14

    .line 66
    invoke-virtual {v9, v6}, Lto;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyx;

    .line 67
    iget-object v2, v0, Lyx;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lyo;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lyo;->j:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lyo;->i:Ljava/util/ArrayList;

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 67
    :cond_13
    const/4 v2, 0x0

    .line 69
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 70
    :cond_14
    invoke-static {}, Lyo;->b()Lth;

    move-result-object v0

    iget v2, v0, Lto;->j:I

    .line 71
    invoke-static {v8}, Lzd;->b(Landroid/view/View;)Lzn;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_1a

    .line 72
    invoke-virtual {v0, v2}, Lto;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_19

    .line 73
    invoke-virtual {v0, v4}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lym;

    if-eqz v5, :cond_19

    iget-object v6, v5, Lym;->a:Landroid/view/View;

    if-eqz v6, :cond_19

    iget-object v6, v5, Lym;->e:Lzn;

    .line 74
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, v5, Lym;->c:Lyx;

    iget-object v7, v5, Lym;->a:Landroid/view/View;

    .line 75
    const/4 v9, 0x1

    invoke-virtual {v1, v7, v9}, Lyo;->a(Landroid/view/View;Z)Lyx;

    move-result-object v10

    .line 76
    invoke-virtual {v1, v7, v9}, Lyo;->b(Landroid/view/View;Z)Lyx;

    move-result-object v11

    if-nez v10, :cond_15

    if-nez v11, :cond_15

    iget-object v9, v1, Lyo;->f:Lyy;

    .line 77
    iget-object v9, v9, Lyy;->a:Lth;

    invoke-virtual {v9, v7}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lyx;

    goto :goto_d

    .line 81
    :cond_15
    nop

    .line 77
    :goto_d
    if-nez v10, :cond_16

    if-eqz v11, :cond_19

    :cond_16
    iget-object v5, v5, Lym;->d:Lyo;

    .line 78
    invoke-virtual {v5, v6, v11}, Lyo;->a(Lyx;Lyx;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 79
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_e

    .line 81
    :cond_17
    invoke-virtual {v0, v4}, Lto;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 80
    :cond_18
    :goto_e
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_19
    :goto_f
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 81
    :cond_1a
    iget-object v9, v1, Lyo;->e:Lyy;

    iget-object v10, v1, Lyo;->f:Lyy;

    iget-object v11, v1, Lyo;->i:Ljava/util/ArrayList;

    iget-object v12, v1, Lyo;->j:Ljava/util/ArrayList;

    .line 82
    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lyo;->a(Landroid/view/ViewGroup;Lyy;Lyy;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 83
    invoke-virtual {v1}, Lyo;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    .line 84
    invoke-direct {p0}, Lyr;->a()V

    .line 85
    sget-object p1, Lys;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lyr;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lys;->a()Lth;

    move-result-object p1

    iget-object v0, p0, Lyr;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 88
    check-cast v2, Lyo;

    iget-object v3, p0, Lyr;->b:Landroid/view/ViewGroup;

    .line 89
    invoke-virtual {v2, v3}, Lyo;->c(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyr;->a:Lyo;

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lyo;->a(Z)V

    return-void
.end method
