.class public abstract Llo;
.super Landroid/view/ViewGroup;
.source "PG"


# instance fields
.field protected final a:Lln;

.field public final b:Landroid/content/Context;

.field public c:Landroid/support/v7/widget/ActionMenuView;

.field public d:Lmc;

.field public e:I

.field protected f:Lgi;

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lln;

    .line 4
    invoke-direct {p2, p0}, Lln;-><init>(Llo;)V

    iput-object p2, p0, Llo;->a:Lln;

    new-instance p2, Landroid/util/TypedValue;

    .line 5
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x7f040002

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p3, :cond_0

    new-instance p3, Landroid/view/ContextThemeWrapper;

    .line 7
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Llo;->b:Landroid/content/Context;

    return-void

    :cond_0
    iput-object p1, p0, Llo;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static final a(Landroid/view/View;II)I
    .locals 1

    .line 8
    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p1, p0

    .line 10
    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static final a(Landroid/view/View;IIIZ)I
    .locals 2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    if-eqz p4, :cond_0

    sub-int p3, p1, v0

    add-int/2addr v1, p2

    .line 23
    invoke-virtual {p0, p3, p2, p1, v1}, Landroid/view/View;->layout(IIII)V

    neg-int p0, v0

    return p0

    :cond_0
    add-int p3, p1, v0

    add-int/2addr v1, p2

    .line 24
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/view/View;->layout(IIII)V

    return v0
.end method

.method static synthetic a(Llo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Llo;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a(IJ)Lgi;
    .locals 2

    iget-object v0, p0, Llo;->f:Lgi;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lgi;->a()V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 29
    invoke-virtual {p0}, Llo;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0, v0}, Llo;->setAlpha(F)V

    .line 31
    :cond_1
    invoke-static {p0}, Lge;->l(Landroid/view/View;)Lgi;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lgi;->a(F)V

    .line 32
    invoke-virtual {p1, p2, p3}, Lgi;->a(J)V

    iget-object p2, p0, Llo;->a:Lln;

    const/4 p3, 0x0

    .line 33
    invoke-virtual {p2, p1, p3}, Lln;->a(Lgi;I)V

    invoke-virtual {p1, p2}, Lgi;->a(Lgj;)V

    return-object p1

    .line 34
    :cond_2
    invoke-static {p0}, Lge;->l(Landroid/view/View;)Lgi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgi;->a(F)V

    .line 35
    invoke-virtual {v1, p2, p3}, Lgi;->a(J)V

    iget-object p2, p0, Llo;->a:Lln;

    .line 36
    invoke-virtual {p2, v1, p1}, Lln;->a(Lgi;I)V

    invoke-virtual {v1, p2}, Lgi;->a(Lgj;)V

    return-object v1
.end method

.method public a(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 11
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12
    invoke-virtual {p0}, Llo;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Ljh;->a:[I

    const/4 v1, 0x0

    const v2, 0x7f040005

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Llo;->a(I)V

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Llo;->d:Lmc;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lmc;->b:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Ljm;->a(Landroid/content/Context;)Ljm;

    move-result-object v0

    invoke-virtual {v0}, Ljm;->a()I

    move-result v0

    iput v0, p1, Lmc;->h:I

    iget-object p1, p1, Lmc;->c:Lkp;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lkp;->b(Z)V

    :cond_0
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Llo;->h:Z

    const/16 v0, 0x9

    :cond_0
    iget-boolean v3, p0, Llo;->h:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 18
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_2

    iput-boolean v4, p0, Llo;->h:Z

    goto :goto_0

    :cond_1
    move v2, v0

    :cond_2
    :goto_0
    const/16 p1, 0xa

    if-eq v2, p1, :cond_3

    const/4 p1, 0x3

    if-ne v2, p1, :cond_4

    :cond_3
    iput-boolean v1, p0, Llo;->h:Z

    :cond_4
    return v4
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Llo;->g:Z

    const/4 v0, 0x0

    :cond_0
    iget-boolean v2, p0, Llo;->g:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 20
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iput-boolean v3, p0, Llo;->g:Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    nop

    :goto_0
    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_4

    :cond_3
    iput-boolean v1, p0, Llo;->g:Z

    :cond_4
    return v3
.end method

.method public final setVisibility(I)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Llo;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Llo;->f:Lgi;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lgi;->a()V

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method
