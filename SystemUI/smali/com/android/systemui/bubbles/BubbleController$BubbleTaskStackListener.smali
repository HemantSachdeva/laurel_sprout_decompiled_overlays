.class Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "BubbleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubbleTaskStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V
    .locals 0

    .line 1578
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    return-void
.end method


# virtual methods
.method public onActivityLaunchOnSecondaryDisplayRerouted()V
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1604
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 1

    .line 1592
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p2}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/bubbles/Bubble;

    .line 1593
    invoke-virtual {p3}, Lcom/android/systemui/bubbles/Bubble;->getDisplayId()I

    move-result p4

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne p4, v0, :cond_0

    .line 1594
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 1595
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_1
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$2300(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1611
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$2400(Lcom/android/systemui/bubbles/BubbleController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1612
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->hideCurrentInputMethod()V

    goto :goto_0

    .line 1614
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSingleTaskDisplayDrawn(I)V
    .locals 1

    .line 1621
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1624
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->showExpandedViewContents(I)V

    return-void
.end method

.method public onSingleTaskDisplayEmpty(I)V
    .locals 2

    .line 1629
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/BubbleViewProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1632
    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleViewProvider;->getDisplayId()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 1633
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, p1, :cond_2

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    .line 1636
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->notifyDisplayEmpty(I)V

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez p1, :cond_0

    .line 1583
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$1700(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpansionAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1584
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_0
    return-void
.end method
