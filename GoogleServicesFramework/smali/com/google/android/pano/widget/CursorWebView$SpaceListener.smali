.class Lcom/google/android/pano/widget/CursorWebView$SpaceListener;
.super Ljava/lang/Object;
.source "CursorWebView.java"

# interfaces
.implements Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;
.implements Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/CursorWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpaceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/CursorWebView;


# direct methods
.method private constructor <init>(Lcom/google/android/pano/widget/CursorWebView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/widget/CursorWebView;Lcom/google/android/pano/widget/CursorWebView$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;-><init>(Lcom/google/android/pano/widget/CursorWebView;)V

    return-void
.end method


# virtual methods
.method public onDown(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;)Z
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/pano/widget/CursorWebView;->access$302(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    return p1
.end method

.method public onFlick(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x17

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    .line 47
    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$000(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/PointF;

    move-result-object v1

    .line 48
    iget-object v2, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 50
    iget-object v2, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$102(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 52
    :cond_0
    iget-object v2, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    iget v8, v1, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    .line 52
    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/pano/widget/CursorWebView;->access$102(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 55
    iget-object v0, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v0}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/CursorWebView;->access$200(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x17

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    .line 64
    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$000(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/PointF;

    move-result-object v1

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x1

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f000000    # 0.5f

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v14

    const/4 v15, 0x0

    .line 65
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 68
    iget-object v2, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2, v1}, Lcom/google/android/pano/widget/CursorWebView;->access$200(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)V

    .line 70
    iget-object v2, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 72
    iget-object v0, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/pano/widget/CursorWebView;->access$102(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 74
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z
    .locals 17

    move-object/from16 v0, p0

    .line 101
    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/pano/widget/CursorWebView;->access$302(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    .line 102
    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v5}, Lcom/google/android/pano/widget/CursorWebView;->access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    .line 103
    invoke-static {v6}, Lcom/google/android/pano/widget/CursorWebView;->access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 102
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/webkit/WebView;->postInvalidate(IIII)V

    .line 104
    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$000(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/PointF;

    move-result-object v1

    .line 105
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getTime()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getTime()J

    move-result-wide v5

    iget v8, v1, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getDeviceId()I

    move-result v15

    const/4 v7, 0x7

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    const/16 v16, 0x0

    .line 105
    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 108
    iget-object v0, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    return v2
.end method

.method public onUp(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/pano/widget/CursorWebView;->access$302(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    const/4 p0, 0x1

    return p0
.end method
