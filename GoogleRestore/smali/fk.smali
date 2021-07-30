.class final Lfk;
.super Landroid/view/View$AccessibilityDelegate;
.source "PG"


# instance fields
.field final a:Lfl;


# direct methods
.method public constructor <init>(Lfl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lfk;->a:Lfl;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lfk;->a:Lfl;

    .line 2
    invoke-virtual {v0, p1, p2}, Lfl;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lfk;->a:Lfl;

    .line 3
    invoke-virtual {v0, p1}, Lfl;->a(Landroid/view/View;)Lha;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lha;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lfk;->a:Lfl;

    .line 4
    invoke-virtual {v0, p1, p2}, Lfl;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    new-instance v0, Lgz;

    .line 5
    invoke-direct {v0, p2}, Lgz;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    invoke-static {p1}, Lge;->F(Landroid/view/View;)Z

    move-result v1

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, v0, Lgz;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    .line 9
    invoke-static {}, Lge;->a()Lgc;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgc;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 11
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v0, Lgz;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    .line 13
    invoke-static {p1}, Lge;->G(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v0, Lgz;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 15
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {p1}, Lge;->f(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 17
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_2

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v4, "R"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v0, Lgz;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 20
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_2
    :goto_1
    iget-object v3, v0, Lgz;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 18
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lfk;->a:Lfl;

    .line 21
    invoke-virtual {v1, p1, v0}, Lfl;->a(Landroid/view/View;Lgz;)V

    .line 22
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 23
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    invoke-static {p1}, Lfl;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    .line 25
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_3

    .line 26
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgw;

    invoke-virtual {v0, p2}, Lgz;->a(Lgw;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lfk;->a:Lfl;

    .line 27
    invoke-virtual {v0, p1, p2}, Lfl;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lfk;->a:Lfl;

    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lfl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lfk;->a:Lfl;

    .line 29
    invoke-virtual {v0, p1, p2, p3}, Lfl;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lfk;->a:Lfl;

    .line 30
    invoke-virtual {v0, p1, p2}, Lfl;->a(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lfk;->a:Lfl;

    .line 31
    invoke-virtual {v0, p1, p2}, Lfl;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
