.class public abstract Lafe;
.super Landroid/view/View$AccessibilityDelegate;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Landroid/graphics/Rect;


# instance fields
.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/Rect;

.field public e:[I

.field public f:Landroid/graphics/Rect;

.field public g:Ljava/util/List;

.field public final h:Landroid/view/accessibility/AccessibilityManager;

.field public final i:Landroid/view/View;

.field public final j:Landroid/content/Context;

.field public k:I

.field private l:Lafd;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/view/View;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lafe;->a:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    .line 2
    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lafe;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lafe;->k:I

    iput v0, p0, Lafe;->m:I

    iput-object p1, p0, Lafe;->i:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lafe;->j:Landroid/content/Context;

    .line 5
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lafe;->h:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private final d(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 6
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    sget-object v0, Lafe;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lafe;->a(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 10
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lafe;->i:Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafe;->i:Landroid/view/View;

    .line 12
    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    return-object p2

    .line 14
    :cond_2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Lafe;->i:Landroid/view/View;

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 18
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lafe;->a(II)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget v0, p0, Lafe;->m:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lafe;->m:I

    const/16 v1, 0x80

    .line 28
    invoke-virtual {p0, p1, v1}, Lafe;->c(II)V

    const/16 p1, 0x100

    .line 29
    invoke-virtual {p0, v0, p1}, Lafe;->c(II)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lafe;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 19
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafe;->i:Landroid/view/View;

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    .line 21
    invoke-direct {p0, p1, v1}, Lafe;->d(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    iget-object p2, p0, Lafe;->i:Landroid/view/View;

    .line 23
    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method protected abstract a(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected abstract a(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method protected abstract a(Ljava/util/List;)V
.end method

.method public final b(I)Z
    .locals 1

    iget v0, p0, Lafe;->k:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract b(II)Z
.end method

.method public final c(II)V
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lafe;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 24
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lafe;->i:Landroid/view/View;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2}, Lafe;->d(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Lafe;->i:Landroid/view/View;

    .line 27
    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void

    .line 24
    :cond_2
    :goto_0
    return-void
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    iget-object p1, p0, Lafe;->l:Lafd;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lafd;

    .line 17
    invoke-direct {p1, p0}, Lafd;-><init>(Lafe;)V

    iput-object p1, p0, Lafe;->l:Lafd;

    :cond_0
    iget-object p1, p0, Lafe;->l:Lafd;

    return-object p1
.end method
