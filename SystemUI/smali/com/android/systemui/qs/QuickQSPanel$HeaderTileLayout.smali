.class Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
.super Lcom/android/systemui/qs/TileLayout;
.source "QuickQSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickQSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderTileLayout"
.end annotation


# instance fields
.field private mClippingBounds:Landroid/graphics/Rect;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    .line 279
    iput-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 p1, 0x0

    .line 280
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 281
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 282
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    .line 284
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 285
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calculateColumns()Z
    .locals 7

    .line 335
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 336
    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 339
    iput v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    return v3

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    .line 344
    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    mul-int/2addr v5, v1

    sub-int v5, v4, v5

    add-int/lit8 v6, v1, -0x1

    .line 346
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/2addr v5, v6

    if-lez v5, :cond_1

    .line 349
    iput v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 350
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    goto :goto_1

    .line 352
    :cond_1
    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    if-nez v5, :cond_2

    move v1, v3

    goto :goto_0

    .line 353
    :cond_2
    div-int v5, v4, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v1, v3, :cond_3

    .line 356
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    goto :goto_1

    .line 358
    :cond_3
    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    mul-int/2addr v5, v1

    sub-int/2addr v4, v5

    sub-int/2addr v1, v3

    div-int/2addr v4, v1

    iput v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 363
    :goto_1
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq p0, v0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method private generateTileLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 301
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private setAccessibilityOrder()V
    .locals 5

    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 370
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 373
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    sget v0, Lcom/android/systemui/R$id;->expand_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAccessibilityTraversalBefore(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected addTileView(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2

    .line 307
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->generateTileLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected getColumnStart(I)I
    .locals 2

    .line 399
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    add-int/2addr p1, p0

    return p1

    .line 403
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    add-int/2addr v1, p0

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public getNumVisibleTiles()I
    .locals 0

    .line 394
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 290
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->updateResources()Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 296
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->updateResources()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 313
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    const/16 p3, 0x2710

    invoke-virtual {p1, p2, p2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 314
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->calculateColumns()Z

    move p1, p2

    .line 318
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 319
    iget-object p3, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p3, p3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget p4, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ge p1, p4, :cond_0

    move p4, p2

    goto :goto_1

    :cond_0
    const/16 p4, 0x8

    :goto_1
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setAccessibilityOrder()V

    .line 323
    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TileLayout;->layoutTileRecords(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 381
    iget-object p2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 382
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v1}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-static {v2}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_0

    .line 386
    :cond_1
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 389
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setListening(Z)V
    .locals 5

    .line 408
    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 409
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/TileLayout;->setListening(Z)V

    if-eqz v0, :cond_1

    move p1, v1

    .line 411
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getNumVisibleTiles()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 413
    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/qs/QSEvent;->QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    .line 414
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    .line 413
    invoke-interface {v2, v3, v1, v4, v0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateResources()Z
    .locals 2

    .line 328
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 329
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    const/4 p0, 0x0

    return p0
.end method
