.class public Lciw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Landroid/os/Handler;

.field public static final b:Ljava/lang/String;

.field private static final m:[I


# instance fields
.field public final c:Landroid/view/ViewGroup;

.field public final d:Landroid/content/Context;

.field protected final e:Lciv;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public final l:Lcin;

.field private final n:Ljava/lang/Runnable;

.field private o:Landroid/graphics/Rect;

.field private final p:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040237

    aput v2, v0, v1

    sput-object v0, Lciw;->m:[I

    const-class v0, Lciw;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lciw;->b:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcij;

    invoke-direct {v2}, Lcij;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lciw;->a:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcik;

    .line 4
    invoke-direct {v0, p0}, Lcik;-><init>(Lciw;)V

    iput-object v0, p0, Lciw;->n:Ljava/lang/Runnable;

    new-instance v0, Lcin;

    .line 5
    invoke-direct {v0, p0}, Lcin;-><init>(Lciw;)V

    iput-object v0, p0, Lciw;->l:Lcin;

    if-eqz p2, :cond_4

    .line 6
    if-eqz p3, :cond_3

    .line 7
    iput-object p1, p0, Lciw;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lciw;->k:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lciw;->d:Landroid/content/Context;

    .line 9
    invoke-static {p3}, Lcgr;->a(Landroid/content/Context;)V

    .line 10
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lciw;->m:[I

    .line 11
    invoke-virtual {p3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 12
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 13
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v4, v3, :cond_0

    const v1, 0x7f0d0073

    goto :goto_0

    .line 29
    :cond_0
    const v1, 0x7f0d002b

    .line 13
    :goto_0
    nop

    .line 14
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lciv;

    iput-object p1, p0, Lciw;->e:Lciv;

    iget v0, p1, Lciv;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v2, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    .line 15
    invoke-virtual {v2}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v2

    const v3, 0x7f0400c8

    .line 16
    invoke-static {p2, v3}, Lcsb;->a(Landroid/view/View;I)I

    move-result v3

    .line 17
    invoke-static {v3, v2, v0}, Lcrj;->a(IIF)I

    move-result v0

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    nop

    .line 19
    invoke-virtual {p1, p2}, Lciv;->addView(Landroid/view/View;)V

    .line 20
    invoke-virtual {p1}, Lciv;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 21
    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 22
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    .line 23
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lciw;->o:Landroid/graphics/Rect;

    :cond_2
    nop

    .line 24
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lge;->c(Landroid/view/View;I)V

    .line 25
    invoke-static {p1, p2}, Lge;->a(Landroid/view/View;I)V

    .line 26
    invoke-static {p1}, Lge;->I(Landroid/view/View;)V

    new-instance p2, Lcil;

    .line 27
    invoke-direct {p2, p0}, Lcil;-><init>(Lciw;)V

    invoke-static {p1, p2}, Lge;->a(Landroid/view/View;Lfu;)V

    .line 28
    new-instance p2, Lcim;

    invoke-direct {p2, p0}, Lcim;-><init>(Lciw;)V

    invoke-static {p1, p2}, Lge;->a(Landroid/view/View;Lfl;)V

    .line 29
    const-string p1, "accessibility"

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lciw;->p:Landroid/view/accessibility/AccessibilityManager;

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final varargs a([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 37
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 38
    sget-object v0, Lccy;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    new-instance v0, Lcid;

    invoke-direct {v0, p0}, Lcid;-><init>(Lciw;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lciw;->e:Lciv;

    .line 63
    invoke-virtual {v0}, Lciv;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 64
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lciw;->o:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget v2, p0, Lciw;->g:I

    .line 66
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lciw;->o:Landroid/graphics/Rect;

    .line 68
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lciw;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lciw;->o:Landroid/graphics/Rect;

    .line 69
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lciw;->i:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lciw;->e:Lciv;

    .line 70
    invoke-virtual {v0}, Lciv;->requestLayout()V

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget v0, p0, Lciw;->j:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lciw;->e:Lciv;

    .line 72
    invoke-virtual {v0}, Lciv;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 73
    instance-of v1, v0, Ltw;

    if-eqz v1, :cond_1

    check-cast v0, Ltw;

    iget-object v0, v0, Ltw;->a:Ltt;

    .line 74
    instance-of v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lciw;->e:Lciv;

    iget-object v1, p0, Lciw;->n:Ljava/lang/Runnable;

    .line 75
    invoke-virtual {v0, v1}, Lciv;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lciw;->e:Lciv;

    iget-object v1, p0, Lciw;->n:Ljava/lang/Runnable;

    .line 76
    invoke-virtual {v0, v1}, Lciv;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    .line 64
    :cond_2
    :goto_0
    sget-object v0, Lciw;->b:Ljava/lang/String;

    .line 65
    const-string v1, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final a(I)V
    .locals 4

    .line 30
    invoke-static {}, Lcjb;->a()Lcjb;

    move-result-object v0

    iget-object v1, p0, Lciw;->l:Lcin;

    iget-object v2, v0, Lcjb;->a:Ljava/lang/Object;

    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    invoke-virtual {v0, v1}, Lcjb;->c(Lcin;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcjb;->c:Lcja;

    .line 33
    invoke-virtual {v0, v1, p1}, Lcjb;->a(Lcja;I)Z

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Lcjb;->d(Lcin;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcjb;->d:Lcja;

    .line 35
    invoke-virtual {v0, v1, p1}, Lcjb;->a(Lcja;I)Z

    .line 36
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lciw;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lciw;->e:Lciv;

    new-instance v1, Lcis;

    .line 60
    invoke-direct {v1, p0}, Lcis;-><init>(Lciw;)V

    invoke-virtual {v0, v1}, Lciv;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lciw;->e:Lciv;

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Lciv;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lciw;->d()V

    return-void
.end method

.method public final c()I
    .locals 3

    iget-object v0, p0, Lciw;->e:Lciv;

    .line 40
    invoke-virtual {v0}, Lciv;->getHeight()I

    move-result v0

    iget-object v1, p0, Lciw;->e:Lciv;

    .line 41
    invoke-virtual {v1}, Lciv;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 42
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 43
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method final d()V
    .locals 3

    .line 52
    invoke-static {}, Lcjb;->a()Lcjb;

    move-result-object v0

    iget-object v1, p0, Lciw;->l:Lcin;

    iget-object v2, v0, Lcjb;->a:Ljava/lang/Object;

    .line 53
    monitor-enter v2

    .line 54
    :try_start_0
    invoke-virtual {v0, v1}, Lcjb;->c(Lcin;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcjb;->c:Lcja;

    .line 55
    invoke-virtual {v0, v1}, Lcjb;->a(Lcja;)V

    .line 56
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final e()Z
    .locals 2

    iget-object v0, p0, Lciw;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final f()V
    .locals 3

    .line 44
    invoke-static {}, Lcjb;->a()Lcjb;

    move-result-object v0

    iget-object v1, p0, Lciw;->l:Lcin;

    iget-object v2, v0, Lcjb;->a:Ljava/lang/Object;

    .line 45
    monitor-enter v2

    .line 46
    :try_start_0
    invoke-virtual {v0, v1}, Lcjb;->c(Lcin;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcjb;->c:Lcja;

    iget-object v1, v0, Lcjb;->d:Lcja;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lcjb;->b()V

    .line 48
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lciw;->e:Lciv;

    .line 49
    invoke-virtual {v0}, Lciv;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 50
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lciw;->e:Lciv;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 48
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
