.class public final Lciy;
.super Lciw;
.source "PG"


# static fields
.field private static final n:[I


# instance fields
.field public final m:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lciy;->n:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040236
        0x7f040238
    .end array-data
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lciw;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lciy;->m:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static a(Landroid/view/View;)Lciy;
    .locals 7

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 4
    :cond_0
    instance-of v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    .line 10
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    .line 5
    :cond_1
    instance-of v3, p0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    .line 11
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    .line 7
    :cond_2
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 9
    instance-of v3, p0, Landroid/view/View;

    if-eqz v3, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v1

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    move-object p0, v2

    .line 10
    :goto_1
    if-eqz p0, :cond_7

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lciy;->n:[I

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 16
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x1

    .line 17
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 18
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const v2, 0x7f0d002c

    if-eq v5, v4, :cond_6

    if-eq v6, v4, :cond_6

    const v2, 0x7f0d0074

    goto :goto_2

    .line 22
    :cond_6
    nop

    .line 18
    :goto_2
    nop

    .line 19
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    new-instance v2, Lciy;

    .line 20
    invoke-direct {v2, p0, v1, v1}, Lciy;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    iget-object p0, v2, Lciy;->e:Lciv;

    .line 21
    invoke-virtual {p0, v3}, Lciv;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v4, v2, Lciw;->f:I

    return-object v2

    .line 10
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string v0, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
