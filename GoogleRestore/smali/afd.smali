.class final Lafd;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "PG"


# instance fields
.field final synthetic a:Lafe;


# direct methods
.method public constructor <init>(Lafe;)V
    .locals 0

    iput-object p1, p0, Lafd;->a:Lafe;

    .line 1
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    iget-object v0, p0, Lafd;->a:Lafe;

    .line 2
    sget-object v1, Lafe;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_a

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v0, Lafe;->e:[I

    new-instance v2, Landroid/graphics/Rect;

    .line 3
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lafe;->d:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lafe;->c:Landroid/graphics/Rect;

    iget-object v2, v0, Lafe;->d:Landroid/graphics/Rect;

    iget-object v3, v0, Lafe;->e:[I

    iget-object v4, v0, Lafe;->c:Landroid/graphics/Rect;

    .line 5
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 6
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v7, Lafe;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v7, Lafe;->b:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {v0, p1, v5}, Lafe;->a(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 10
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    sget-object v7, Lafe;->b:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 14
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v7

    and-int/lit8 v8, v7, 0x40

    if-nez v8, :cond_8

    .line 15
    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_7

    .line 16
    iget-object v7, v0, Lafe;->i:Landroid/view/View;

    .line 17
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lafe;->i:Landroid/view/View;

    .line 18
    invoke-virtual {v5, v7, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v7, v0, Lafe;->i:Landroid/view/View;

    .line 19
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget v7, v0, Lafe;->k:I

    if-ne v7, p1, :cond_2

    .line 20
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 21
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 35
    :cond_2
    nop

    .line 22
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 23
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 21
    :goto_1
    if-eqz v2, :cond_6

    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    .line 41
    :cond_3
    iget-object p1, v0, Lafe;->i:Landroid/view/View;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, v0, Lafe;->i:Landroid/view/View;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 27
    :goto_2
    instance-of v7, p1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 28
    check-cast p1, Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-lez v7, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, v0, Lafe;->f:Landroid/graphics/Rect;

    if-nez p1, :cond_5

    new-instance p1, Landroid/graphics/Rect;

    .line 31
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, v0, Lafe;->f:Landroid/graphics/Rect;

    :cond_5
    iget-object p1, v0, Lafe;->f:Landroid/graphics/Rect;

    iget-object v7, v0, Lafe;->i:Landroid/view/View;

    .line 32
    invoke-virtual {v7, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 33
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 35
    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 24
    :cond_6
    :goto_3
    iget-object p1, v0, Lafe;->i:Landroid/view/View;

    .line 36
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 37
    aget p1, v3, v1

    .line 38
    aget v0, v3, v6

    .line 39
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 40
    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 41
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_7

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 16
    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_a
    iget-object p1, v0, Lafe;->i:Landroid/view/View;

    .line 43
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    iget-object p1, v0, Lafe;->i:Landroid/view/View;

    .line 44
    invoke-virtual {p1, v5}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 45
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result p1

    iget-object v2, v0, Lafe;->g:Ljava/util/List;

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lafe;->g:Ljava/util/List;

    goto :goto_4

    .line 47
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 46
    :goto_4
    iget-object v2, v0, Lafe;->g:Ljava/util/List;

    .line 48
    invoke-virtual {v0, v2}, Lafe;->a(Ljava/util/List;)V

    if-lez p1, :cond_d

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_c

    goto :goto_5

    .line 51
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 52
    const-string v0, "Views cannot have both real and virtual children"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :goto_6
    if-ge v1, p1, :cond_e

    iget-object v3, v0, Lafe;->i:Landroid/view/View;

    .line 51
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    nop

    .line 41
    :goto_7
    return-object v5
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Lafd;->a:Lafe;

    .line 53
    sget-object v1, Lafe;->a:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_7

    const/16 p3, 0x80

    const/16 v3, 0x40

    if-eq p2, v3, :cond_0

    if-eq p2, p3, :cond_0

    .line 61
    invoke-virtual {v0, p1, p2}, Lafe;->b(II)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v4, 0x10000

    const/high16 v5, -0x80000000

    if-eq p2, v3, :cond_3

    if-eq p2, p3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, p1}, Lafe;->b(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iput v5, v0, Lafe;->k:I

    iget-object p2, v0, Lafe;->i:Landroid/view/View;

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 60
    invoke-virtual {v0, p1, v4}, Lafe;->c(II)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 61
    :cond_3
    iget-object p2, v0, Lafe;->j:Landroid/content/Context;

    .line 54
    const-string p3, "accessibility"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iget-object p3, v0, Lafe;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 55
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p1}, Lafe;->b(I)Z

    move-result p2

    if-nez p2, :cond_6

    iget p2, v0, Lafe;->k:I

    if-eq p2, v5, :cond_5

    .line 56
    invoke-virtual {v0, p2, v4}, Lafe;->c(II)V

    :cond_5
    iput p1, v0, Lafe;->k:I

    iget-object p2, v0, Lafe;->i:Landroid/view/View;

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    .line 58
    invoke-virtual {v0, p1, p2}, Lafe;->c(II)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    :cond_7
    iget-object p1, v0, Lafe;->i:Landroid/view/View;

    .line 62
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    .line 61
    :goto_0
    return v1
.end method
