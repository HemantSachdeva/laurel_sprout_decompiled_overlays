.class Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;
.super Ljava/lang/Object;
.source "NotificationShadeWindowViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setupExpandedStatusBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didIntercept(Landroid/view/MotionEvent;)V
    .locals 1

    .line 309
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 312
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public didNotHandleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 335
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 346
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 347
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_3

    const/16 v4, 0x52

    if-eq v3, v4, :cond_2

    const/16 v0, 0x18

    if-eq v3, v0, :cond_1

    const/16 v0, 0x19

    if-eq v3, v0, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    const/high16 v0, -0x80000000

    .line 367
    invoke-virtual {p0, p1, v0, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    return v2

    :cond_2
    if-nez v0, :cond_4

    .line 355
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result p0

    return p0

    :cond_3
    if-nez v0, :cond_4

    .line 360
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v1

    :cond_5
    if-nez v0, :cond_6

    .line 350
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    :cond_6
    return v2
.end method

.method public handleDispatchTouchEvent(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 10

    .line 206
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 207
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 208
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    .line 210
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v7

    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    .line 212
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v8, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    :cond_4
    if-nez v5, :cond_5

    .line 219
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldIgnoreTouch()Z

    move-result v8

    if-eqz v8, :cond_5

    return-object v0

    :cond_5
    if-eqz v1, :cond_6

    .line 222
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 223
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandLatencyTracking()V

    :cond_6
    if-eqz v1, :cond_7

    .line 226
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setTouchActive(Z)V

    .line 227
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$702(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    goto :goto_3

    .line 228
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eq v8, v3, :cond_8

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v6, :cond_9

    .line 230
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setTouchActive(Z)V

    .line 232
    :cond_9
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$900(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_4

    .line 235
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    invoke-interface {v6, p1, v8, v9}, Lcom/android/systemui/plugins/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 236
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 237
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 238
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_b

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_b

    return-object v0

    :cond_b
    if-eqz v1, :cond_c

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 249
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    :cond_d
    if-eqz v1, :cond_e

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_e

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    move v7, v3

    :cond_e
    if-eqz v7, :cond_f

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 265
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 266
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 269
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v5

    invoke-static {v4, v5, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isSameStatusBarState(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1602(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 274
    :cond_10
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 277
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v4, :cond_12

    if-eqz v5, :cond_13

    .line 280
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1602(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z

    .line 282
    :cond_13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0

    :cond_15
    :goto_4
    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 323
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 291
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 297
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 298
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 299
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0
.end method
