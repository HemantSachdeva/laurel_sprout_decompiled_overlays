.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;
    }
.end annotation


# instance fields
.field protected mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mAlphaPaint:Landroid/graphics/Paint;

.field private mCurrentPanelAlpha:I

.field private mDozing:Z

.field private mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mRtlChangeListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    new-instance p2, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    .line 104
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 111
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 112
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p2, 0x0

    .line 114
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 116
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 117
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 140
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getCurrentPanelAlpha()F
    .locals 0

    .line 269
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    int-to-float p0, p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    .line 160
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRtlChangeListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;->onRtlPropertielsChanged(I)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setDozing(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return-void
.end method

.method public setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method

.method setPanelAlphaInternal(F)V
    .locals 2

    float-to-int p1, p1

    .line 149
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCurrentPanelAlpha:I

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method setRtlChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRtlChangeListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showBouncerForFOD(Z)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->showBouncerForFOD(Z)V

    :cond_0
    return-void
.end method

.method public updateFpodState()V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateFpodState()V

    return-void
.end method

.method public updateFpodState(Z)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateFpodState(Z)V

    return-void
.end method
