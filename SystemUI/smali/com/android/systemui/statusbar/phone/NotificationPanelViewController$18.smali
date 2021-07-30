.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;
.super Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 3246
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 3249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 3255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3258
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3259
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    const-string v0, "panel_open"

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 3260
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p0

    const-string p1, "panel_open_peek"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    return v1

    .line 3263
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FFF)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3264
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 3268
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 3271
    :cond_4
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3277
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowingScrimmed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3288
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 3289
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 3290
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 3295
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 3296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    .line 3298
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 3299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FFF)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3300
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 3304
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3305
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const-string v3, "panel_open_peek"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 3309
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 3310
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 3313
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v2

    .line 3316
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 3318
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v3, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_a

    return v2

    .line 3321
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const-string v3, "panel_open"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 3323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateVerticalPanelPosition(F)V

    move v0, v2

    .line 3326
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 3327
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p0

    if-nez p0, :cond_c

    if-eqz p1, :cond_d

    :cond_c
    move v1, v2

    :cond_d
    :goto_1
    return v1
.end method
