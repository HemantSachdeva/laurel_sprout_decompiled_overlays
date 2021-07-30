.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Laci;

.field private c:Lach;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 16

    .line 6
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v2

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/volley/toolbox/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v7, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 44
    :cond_1
    const/4 v6, 0x0

    .line 11
    :goto_1
    goto :goto_2

    .line 44
    :cond_2
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 11
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    .line 44
    :cond_3
    const/4 v7, 0x0

    .line 11
    :goto_3
    if-nez v0, :cond_6

    if-nez v2, :cond_5

    if-eqz v7, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_4

    .line 44
    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    nop

    .line 11
    :goto_4
    iget-object v7, v1, Lcom/android/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    .line 12
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v0, v1, Lcom/android/volley/toolbox/NetworkImageView;->c:Lach;

    if-eqz v0, :cond_7

    .line 13
    invoke-virtual {v0}, Lach;->a()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/volley/toolbox/NetworkImageView;->c:Lach;

    .line 14
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/volley/toolbox/NetworkImageView;->a()V

    return-void

    :cond_8
    iget-object v7, v1, Lcom/android/volley/toolbox/NetworkImageView;->c:Lach;

    if-eqz v7, :cond_a

    iget-object v7, v7, Lach;->b:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v9, v1, Lcom/android/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    return-void

    :cond_9
    iget-object v7, v1, Lcom/android/volley/toolbox/NetworkImageView;->c:Lach;

    .line 16
    invoke-virtual {v7}, Lach;->a()V

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/android/volley/toolbox/NetworkImageView;->a()V

    :cond_a
    if-eq v4, v3, :cond_b

    goto :goto_5

    .line 44
    :cond_b
    const/4 v0, 0x0

    .line 17
    :goto_5
    if-ne v4, v6, :cond_c

    const/4 v7, 0x0

    goto :goto_6

    :cond_c
    move v7, v2

    :goto_6
    iget-object v2, v1, Lcom/android/volley/toolbox/NetworkImageView;->b:Laci;

    iget-object v5, v1, Lcom/android/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    new-instance v3, Lacl;

    .line 18
    move/from16 v6, p1

    invoke-direct {v3, v1, v6}, Lacl;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V

    .line 19
    invoke-static {}, Lbir;->d()V

    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xc

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "#W"

    .line 21
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "#H"

    .line 23
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "#S"

    .line 25
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v6, v2, Laci;->e:Lakh;

    iget-object v6, v6, Lakh;->a:Ltn;

    .line 29
    invoke-virtual {v6, v15}, Ltn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/graphics/Bitmap;

    if-eqz v11, :cond_d

    new-instance v0, Lach;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 30
    move-object v9, v0

    move-object v10, v2

    move-object v12, v5

    invoke-direct/range {v9 .. v14}, Lach;-><init>(Laci;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lacl;)V

    .line 31
    invoke-virtual {v3, v0, v4}, Lacl;->a(Lach;Z)V

    goto/16 :goto_8

    :cond_d
    new-instance v6, Lach;

    const/4 v11, 0x0

    .line 32
    move-object v9, v6

    move-object v10, v2

    move-object v12, v5

    move-object v13, v15

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Lach;-><init>(Laci;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lacl;)V

    .line 33
    invoke-virtual {v3, v6, v4}, Lacl;->a(Lach;Z)V

    iget-object v3, v2, Laci;->b:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lacg;

    if-nez v3, :cond_e

    iget-object v3, v2, Laci;->c:Ljava/util/HashMap;

    .line 35
    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lacg;

    :cond_e
    if-eqz v3, :cond_f

    iget-object v0, v3, Lacg;->c:Ljava/util/List;

    .line 45
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v6

    goto :goto_7

    :cond_f
    new-instance v11, Lacj;

    new-instance v9, Lacd;

    .line 36
    invoke-direct {v9, v2, v15}, Lacd;-><init>(Laci;Ljava/lang/String;)V

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v12, Lace;

    invoke-direct {v12, v2, v15}, Lace;-><init>(Laci;Ljava/lang/String;)V

    move-object v3, v11

    move-object v4, v5

    move-object v5, v9

    move-object v13, v6

    move v6, v0

    move-object v9, v10

    move-object v10, v12

    invoke-direct/range {v3 .. v10}, Lacj;-><init>(Ljava/lang/String;Lacd;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Labn;)V

    iget-object v0, v2, Laci;->a:Labm;

    iput-object v0, v11, Labj;->g:Labm;

    iget-object v3, v0, Labm;->b:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Labm;->b:Ljava/util/Set;

    .line 37
    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v0, Labm;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v11, Labj;->f:Ljava/lang/Integer;

    const-string v3, "add-to-queue"

    .line 41
    invoke-virtual {v11, v3}, Labj;->a(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Labm;->a()V

    iget-object v0, v0, Labm;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 43
    invoke-virtual {v0, v11}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Laci;->b:Ljava/util/HashMap;

    new-instance v2, Lacg;

    .line 44
    invoke-direct {v2, v11, v13}, Lacg;-><init>(Labj;Lach;)V

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_7
    move-object v0, v13

    :goto_8
    iput-object v0, v1, Lcom/android/volley/toolbox/NetworkImageView;->c:Lach;

    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 38
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final drawableStateChanged()V
    .locals 0

    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 5
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->invalidate()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lach;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lach;->a()V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->c:Lach;

    .line 48
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 49
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 50
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Z)V

    return-void
.end method
