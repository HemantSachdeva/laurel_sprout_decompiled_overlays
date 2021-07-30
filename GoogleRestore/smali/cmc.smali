.class public final Lcmc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcmb;


# instance fields
.field private final a:Lckz;

.field private b:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

.field private c:Landroid/widget/LinearLayout;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lckz;Landroid/view/Window;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmc;->a:Lckz;

    .line 1
    const v0, 0x7f0a0174

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    instance-of v1, v0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    iput-object v0, p0, Lcmc;->b:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    goto :goto_0

    .line 5
    :cond_0
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcmc;->c:Landroid/widget/LinearLayout;

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcmc;->d:Landroid/view/View;

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 9
    invoke-virtual {p1}, Lckz;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v2, Lcla;->d:[I

    .line 10
    invoke-virtual {p2, p3, v2, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p3

    const/16 p4, 0x2000

    and-int/2addr p3, p4

    const/4 v2, 0x1

    if-ne p3, p4, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    .line 22
    :cond_1
    const/4 p3, 0x0

    .line 12
    :goto_1
    nop

    .line 13
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    invoke-virtual {p1}, Lckz;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {p1}, Lckz;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object p3

    sget-object v1, Lclu;->b:Lclu;

    .line 18
    invoke-virtual {p3, p1, v1}, Lclv;->d(Landroid/content/Context;Lclu;)Z

    move-result p3

    :cond_2
    if-eqz p3, :cond_3

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/2addr p1, p4

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 24
    :cond_3
    nop

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 20
    :goto_2
    nop

    .line 23
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcmc;->a(Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 1
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 2
    const-string p2, "sucLayoutStatus cannot be null in StatusBarMixin"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iget-object v0, p0, Lcmc;->a:Lckz;

    .line 25
    invoke-virtual {v0}, Lckz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcmc;->a:Lckz;

    .line 26
    invoke-virtual {p1}, Lckz;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v0

    sget-object v1, Lclu;->a:Lclu;

    .line 28
    invoke-virtual {v0, p1, v1}, Lclv;->b(Landroid/content/Context;Lclu;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcmc;->b:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcmc;->c:Landroid/widget/LinearLayout;

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iput-object p1, v0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 33
    :cond_2
    const/4 v3, 0x0

    .line 30
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    invoke-virtual {v0, v3}, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->setWillNotDraw(Z)V

    if-eqz p1, :cond_3

    goto :goto_1

    .line 33
    :cond_3
    const/4 v1, 0x0

    .line 32
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->setFitsSystemWindows(Z)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->invalidate()V

    return-void
.end method
