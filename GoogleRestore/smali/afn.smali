.class public final Lafn;
.super Lafe;
.source "PG"


# instance fields
.field public final synthetic l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

.field private m:Landroid/graphics/Rect;

.field private final n:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 1
    invoke-direct {p0, p2}, Lafe;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    .line 2
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lafn;->m:Landroid/graphics/Rect;

    new-instance p1, Landroid/util/SparseArray;

    .line 3
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lafn;->n:Landroid/util/SparseArray;

    const/4 p1, 0x1

    :goto_0
    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lafn;->n:Landroid/util/SparseArray;

    new-instance v0, Lafm;

    .line 4
    invoke-direct {p0, p1}, Lafn;->d(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lafm;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final c(I)Z
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 9
    iget-object v1, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->c:[[Z

    div-int/lit8 v2, p1, 0x3

    .line 10
    aget-object v1, v1, v2

    rem-int/lit8 p1, p1, 0x3

    aget-boolean p1, v1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private final d(I)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f110108

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lafn;->n:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lafm;

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, Lafm;->a:Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final a(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 18
    invoke-direct {p0, p1}, Lafn;->d(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-direct {p0, p1}, Lafn;->d(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 20
    iget-boolean v0, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 22
    invoke-direct {p0, p1}, Lafn;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 24
    invoke-direct {p0, p1}, Lafn;->c(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lafn;->m:Landroid/graphics/Rect;

    iget-object v1, p0, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    rem-int/lit8 v2, p1, 0x3

    .line 25
    invoke-virtual {v1, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a(I)F

    move-result v1

    iget-object v2, p0, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    div-int/lit8 p1, p1, 0x3

    .line 26
    invoke-virtual {v2, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->b(I)F

    move-result p1

    iget-object v2, p0, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 27
    iget v3, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->g:F

    .line 28
    iget v4, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->e:F

    mul-float v3, v3, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    .line 29
    iget v2, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->f:F

    mul-float v2, v2, v4

    mul-float v2, v2, v5

    sub-float v4, v1, v2

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    sub-float v1, p1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 7
    iget-boolean v0, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final b(II)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eq p2, v1, :cond_0

    return v0

    .line 11
    :cond_0
    invoke-virtual {p0, p1, v0}, Lafe;->a(II)V

    .line 12
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lafe;->c(II)V

    return p2
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 13
    invoke-super {p0, p1, p2}, Lafe;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, Lafn;->l:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 14
    iget-boolean v0, p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->d:Z

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110107

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
