.class public Lcom/google/android/pano/widget/CursorWebView;
.super Landroid/webkit/WebView;
.source "CursorWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/CursorWebView$SpaceListener;
    }
.end annotation


# instance fields
.field private mAccelerateMargin:I

.field private mActive:Z

.field private mBounceRate:F

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDrawMargin:I

.field private mFingerDown:Z

.field private mHeightMm:F

.field private mInvalidateArea:Landroid/graphics/Rect;

.field private mMargin:I

.field private mNoTouchColor:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRect:Landroid/graphics/Rect;

.field private mScrollAccelDuration:F

.field private mScrollAccelMax:I

.field private mScrollMax:I

.field private mScrollMin:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mScrolling:Z

.field private mSeti:Lcom/google/android/pano/widget/CursorWebView$SpaceListener;

.field private mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

.field private mTouchColor:I

.field private mTouchPaint:Landroid/graphics/Paint;

.field private mTouchSize:I

.field private mTrackedHeight:F

.field private mTrackedWidth:F

.field private mWidthMm:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/CursorWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 292
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance p2, Lcom/google/android/pano/widget/CursorWebView$1;

    invoke-direct {p2, p0}, Lcom/google/android/pano/widget/CursorWebView$1;-><init>(Lcom/google/android/pano/widget/CursorWebView;)V

    iput-object p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 212
    new-instance p2, Lcom/google/android/pano/widget/CursorWebView$2;

    invoke-direct {p2, p0}, Lcom/google/android/pano/widget/CursorWebView$2;-><init>(Lcom/google/android/pano/widget/CursorWebView;)V

    iput-object p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance p2, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;-><init>(Lcom/google/android/pano/widget/CursorWebView;Lcom/google/android/pano/widget/CursorWebView$1;)V

    iput-object p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mSeti:Lcom/google/android/pano/widget/CursorWebView$SpaceListener;

    .line 259
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mInvalidateArea:Landroid/graphics/Rect;

    .line 260
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    .line 262
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x42480000    # 50.0f

    .line 267
    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mWidthMm:F

    .line 268
    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mHeightMm:F

    const/4 p2, 0x3

    .line 269
    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    const/16 p2, 0x30

    .line 270
    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    const/16 p2, 0x200

    .line 271
    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelMax:I

    const p2, 0x461c4000    # 10000.0f

    .line 272
    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelDuration:F

    const/4 p2, 0x0

    .line 283
    iput-boolean p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mActive:Z

    .line 284
    iput-boolean p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mFingerDown:Z

    .line 285
    iput-boolean p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrolling:Z

    .line 293
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 294
    new-instance p2, Lcom/google/android/pano/util/TouchNavSpaceTracker;

    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSeti:Lcom/google/android/pano/widget/CursorWebView$SpaceListener;

    invoke-direct {p2, v0, v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;-><init>(Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;)V

    iput-object p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    .line 295
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mWidthMm:F

    iget v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mHeightMm:F

    invoke-virtual {p2, v0, v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalSize(FF)V

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 297
    sget p2, Lcom/google/android/pano/ui/R$dimen;->cursor_web_view_scroll_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    .line 298
    sget p2, Lcom/google/android/pano/ui/R$dimen;->cursor_web_view_draw_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    .line 299
    sget p2, Lcom/google/android/pano/ui/R$dimen;->cursor_web_view_accel_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mAccelerateMargin:I

    .line 300
    sget p2, Lcom/google/android/pano/ui/R$dimen;->cursor_web_view_bounce_rate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mBounceRate:F

    .line 301
    sget p2, Lcom/google/android/pano/ui/R$color;->touch_indicator_active:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchColor:I

    .line 302
    sget p2, Lcom/google/android/pano/ui/R$color;->touch_indicator_inactive:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mNoTouchColor:I

    .line 303
    sget p2, Lcom/google/android/pano/ui/R$dimen;->cursor_touch_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    .line 304
    iget-object p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    sget p2, Lcom/google/android/pano/ui/R$dimen;->pixels_per_mm:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/CursorWebView;->setPhysicalDensity(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/PointF;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/pano/widget/CursorWebView;->getViewPositionFromTracker()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    return p0
.end method

.method static synthetic access$1002(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mBounceRate:F

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelDuration:F

    return p0
.end method

.method static synthetic access$1202(Lcom/google/android/pano/widget/CursorWebView;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelDuration:F

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelMax:I

    return p0
.end method

.method static synthetic access$1302(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollAccelMax:I

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    return p0
.end method

.method static synthetic access$1402(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mWidthMm:F

    return p0
.end method

.method static synthetic access$1502(Lcom/google/android/pano/widget/CursorWebView;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mWidthMm:F

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mHeightMm:F

    return p0
.end method

.method static synthetic access$1602(Lcom/google/android/pano/widget/CursorWebView;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mHeightMm:F

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    return p0
.end method

.method static synthetic access$1702(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    return p0
.end method

.method static synthetic access$1802(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    return p1
.end method

.method static synthetic access$1900(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    return p0
.end method

.method static synthetic access$1902(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/CursorWebView;->sendOnTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchColor:I

    return p0
.end method

.method static synthetic access$2002(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchColor:I

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/pano/widget/CursorWebView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mNoTouchColor:I

    return p0
.end method

.method static synthetic access$2102(Lcom/google/android/pano/widget/CursorWebView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mNoTouchColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/pano/widget/CursorWebView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mFingerDown:Z

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/pano/widget/CursorWebView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mFingerDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mInvalidateArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/pano/widget/CursorWebView;)Lcom/google/android/pano/util/TouchNavSpaceTracker;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedWidth:F

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/pano/widget/CursorWebView;FF)F
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/CursorWebView;->getScrollVelocity(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/pano/widget/CursorWebView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedHeight:F

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/pano/widget/CursorWebView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrolling:Z

    return p0
.end method

.method static synthetic access$902(Lcom/google/android/pano/widget/CursorWebView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrolling:Z

    return p1
.end method

.method private getScrollVelocity(FF)F
    .locals 3

    .line 422
    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    int-to-float p2, v0

    sub-float v2, p1, p2

    .line 424
    iget p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    neg-int p1, p1

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_0
    int-to-float v1, v0

    sub-float v1, p2, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    sub-float v2, p1, p2

    .line 427
    iget p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    goto :goto_0

    :cond_1
    move p1, v2

    .line 429
    :goto_1
    iget p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mMargin:I

    iget v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mAccelerateMargin:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr v2, p2

    iget p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMax:I

    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollMin:I

    sub-int p0, p2, p0

    int-to-float p0, p0

    mul-float/2addr v2, p0

    add-float/2addr v2, p1

    neg-int p0, p2

    int-to-float p0, p0

    cmpg-float p0, v2, p0

    if-gez p0, :cond_2

    neg-int p0, p2

    int-to-float v2, p0

    goto :goto_2

    :cond_2
    int-to-float p0, p2

    cmpl-float p0, v2, p0

    if-lez p0, :cond_3

    int-to-float v2, p2

    :cond_3
    :goto_2
    return v2
.end method

.method private getViewPositionFromTracker()Landroid/graphics/PointF;
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getCurrentPixelPosition()Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 442
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 443
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    neg-int v3, v2

    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    add-int/2addr v3, p0

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 444
    iget v1, v0, Landroid/graphics/PointF;->y:F

    neg-int v2, v2

    add-int/2addr v2, p0

    int-to-float p0, v2

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private registerIntentListeners(Landroid/content/Context;)V
    .locals 2

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "scroll"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "size"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "cursor"

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 450
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private unregisterIntentListeners(Landroid/content/Context;)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 355
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    .line 358
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 361
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 378
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 379
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 380
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 381
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 382
    iget-boolean v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mActive:Z

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {v0}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getCurrentPixelPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 385
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 386
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mFingerDown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/pano/widget/CursorWebView;->mNoTouchColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 388
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mInvalidateArea:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    sub-int v2, v1, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, p0

    add-int/2addr v1, p0

    add-int/2addr v0, p0

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mActive:Z

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 344
    iget-boolean p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrolling:Z

    if-nez p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 349
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 337
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/CursorWebView;->unregisterIntentListeners(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 332
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/CursorWebView;->registerIntentListeners(Landroid/content/Context;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 367
    iget p3, p0, Lcom/google/android/pano/widget/CursorWebView;->mDrawMargin:I

    iget p4, p0, Lcom/google/android/pano/widget/CursorWebView;->mTouchSize:I

    sub-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedWidth:F

    sub-int/2addr p3, p4

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    int-to-float p2, p2

    .line 368
    iput p2, p0, Lcom/google/android/pano/widget/CursorWebView;->mTrackedHeight:F

    .line 373
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPixelSize(FF)V

    return-void
.end method

.method public setPhysicalDensity(F)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/google/android/pano/widget/CursorWebView;->mSpaceTracker:Lcom/google/android/pano/util/TouchNavSpaceTracker;

    invoke-virtual {p0, p1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalDensity(F)V

    return-void
.end method
