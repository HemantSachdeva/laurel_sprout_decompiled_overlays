.class Lcom/google/android/pano/widget/CursorWebView$1;
.super Ljava/lang/Object;
.source "CursorWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/CursorWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollStartX:J

.field private mScrollStartY:J

.field final synthetic this$0:Lcom/google/android/pano/widget/CursorWebView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/CursorWebView;)V
    .locals 2

    .line 126
    iput-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 127
    iput-wide v0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartX:J

    .line 128
    iput-wide v0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartY:J

    return-void
.end method

.method private addAcceleration(FJJ)F
    .locals 0

    sub-long/2addr p2, p4

    long-to-float p2, p2

    .line 199
    iget-object p3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    .line 200
    invoke-static {p3}, Lcom/google/android/pano/widget/CursorWebView;->access$1200(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result p3

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p4, p2, p3

    if-lez p4, :cond_0

    move p2, p3

    .line 204
    :cond_0
    iget-object p3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p3}, Lcom/google/android/pano/widget/CursorWebView;->access$1300(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p3

    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p0}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result p0

    sub-int/2addr p3, p0

    int-to-float p0, p3

    mul-float/2addr p2, p0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    neg-float p2, p2

    :goto_0
    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 132
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v0}, Lcom/google/android/pano/widget/CursorWebView;->access$500(Lcom/google/android/pano/widget/CursorWebView;)Lcom/google/android/pano/util/TouchNavSpaceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getCurrentPixelPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$600(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$700(Lcom/google/android/pano/widget/CursorWebView;FF)F

    move-result v5

    .line 134
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$800(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$700(Lcom/google/android/pano/widget/CursorWebView;FF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v5, v2

    const/4 v12, 0x0

    if-nez v3, :cond_0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    .line 136
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {p0, v12}, Lcom/google/android/pano/widget/CursorWebView;->access$902(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    return-void

    .line 139
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 141
    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$900(Lcom/google/android/pano/widget/CursorWebView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/android/pano/widget/CursorWebView;->access$902(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    const-wide/16 v13, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    iput-wide v13, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartX:J

    goto :goto_1

    .line 146
    :cond_3
    :goto_0
    iget-wide v8, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartX:J

    cmp-long v3, v8, v13

    if-nez v3, :cond_4

    .line 148
    iput-wide v10, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartX:J

    goto :goto_1

    :cond_4
    move-object v4, p0

    move-wide v6, v10

    .line 150
    invoke-direct/range {v4 .. v9}, Lcom/google/android/pano/widget/CursorWebView$1;->addAcceleration(FJJ)F

    move-result v5

    .line 155
    :goto_1
    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 163
    :cond_5
    iput-wide v13, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartY:J

    goto :goto_3

    .line 156
    :cond_6
    :goto_2
    iget-wide v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartY:J

    cmp-long v6, v3, v13

    if-nez v6, :cond_7

    .line 158
    iput-wide v10, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartY:J

    goto :goto_3

    :cond_7
    move-object v6, p0

    move v7, v1

    move-wide v8, v10

    move-wide v10, v3

    .line 160
    invoke-direct/range {v6 .. v11}, Lcom/google/android/pano/widget/CursorWebView$1;->addAcceleration(FJJ)F

    move-result v1

    .line 168
    :goto_3
    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$300(Lcom/google/android/pano/widget/CursorWebView;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 169
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 170
    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v2

    if-eqz v4, :cond_9

    if-lez v4, :cond_8

    .line 172
    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1100(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v4

    neg-float v4, v4

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1100(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v4

    :goto_4
    add-float/2addr v3, v4

    :cond_9
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_b

    .line 174
    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$300(Lcom/google/android/pano/widget/CursorWebView;)Z

    move-result v4

    if-nez v4, :cond_b

    if-lez v2, :cond_a

    .line 175
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$1100(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v2

    neg-float v2, v2

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$1100(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v2

    :goto_5
    add-float/2addr v0, v2

    .line 177
    :cond_b
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$500(Lcom/google/android/pano/widget/CursorWebView;)Lcom/google/android/pano/util/TouchNavSpaceTracker;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPixelPosition(FF)V

    .line 180
    :cond_c
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    float-to-int v2, v5

    add-int/2addr v0, v2

    if-gez v0, :cond_d

    move v0, v12

    goto :goto_6

    .line 185
    :cond_d
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_e

    .line 186
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 188
    :cond_e
    :goto_6
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    float-to-int v1, v1

    add-int/2addr v2, v1

    if-gez v2, :cond_f

    goto :goto_7

    :cond_f
    int-to-float v1, v2

    .line 191
    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_10

    .line 192
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v12, v1

    goto :goto_7

    :cond_10
    move v12, v2

    .line 194
    :goto_7
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v1, v0, v12}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 195
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->postInvalidate()V

    return-void
.end method
