.class Lcom/google/android/pano/widget/ScrollAdapterView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downTimeOnExpandedView:J

.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .line 1820
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1825
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestFocus()Z

    .line 1826
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1827
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 1828
    iget v4, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 1829
    iget-object v3, v3, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1830
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v4, v3, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getScrollX()I

    move-result v3

    neg-int v3, v3

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1831
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v3, v3, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->downTimeOnExpandedView:J

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 1838
    iput-wide v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->downTimeOnExpandedView:J

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1884
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    neg-float p1, p3

    neg-float p2, p4

    invoke-static {p0, p1, p2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1300(Lcom/google/android/pano/widget/ScrollAdapterView;FF)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {p0, p3, p4}, Lcom/google/android/pano/widget/ScrollAdapterView;->dragBy(FF)V

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1844
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->downTimeOnExpandedView:J

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1848
    :cond_0
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    .line 1849
    iget-object v3, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    .line 1850
    iget-object v4, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    .line 1851
    iget-object v6, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v6, v5}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1852
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 1853
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    .line 1854
    iget-object v8, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v8, v8, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1855
    iget-object v8, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v8, v8, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1856
    iget-object v8, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v8, v8, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1857
    iget-object v8, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v8

    const/4 v13, 0x1

    if-eqz v8, :cond_1

    .line 1858
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$000(Lcom/google/android/pano/widget/ScrollAdapterView;I)I

    move-result v10

    .line 1859
    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 1860
    invoke-static {v8}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1200(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 1859
    invoke-interface/range {v7 .. v12}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v13

    .line 1863
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    invoke-virtual {v9, v8}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1865
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_3

    .line 1866
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 1867
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v12, v12, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1868
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    iget-object v15, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v15, v15, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v14, v15}, Landroid/widget/AdapterView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1870
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v12, v12, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1871
    iget-object v12, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v12, v12, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1872
    invoke-virtual {v11}, Landroid/view/View;->performClick()Z

    return v13

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return v2
.end method
