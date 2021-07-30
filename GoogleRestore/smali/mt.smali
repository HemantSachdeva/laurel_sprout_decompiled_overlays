.class public final Lmt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmt;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lji;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    invoke-static {}, Loh;->a()V

    :cond_0
    iget-object v0, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lmt;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :goto_0
    invoke-virtual {p0}, Lmt;->b()V

    return-void
.end method

.method public final a(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object v0, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljh;->f:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v0

    iget-object v1, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ljh;->f:[I

    iget-object v5, v0, Lrn;->b:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    iget-object p1, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1, p2}, Lrn;->f(II)I

    move-result v1

    if-eq v1, p2, :cond_0

    iget-object p1, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lji;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Loh;->a()V

    :cond_1
    nop

    .line 13
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lrn;->f(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0, p1}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_2
    nop

    .line 18
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lrn;->f(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v0, p1, p2}, Lrn;->a(II)I

    move-result p1

    const/4 p2, 0x0

    .line 20
    invoke-static {p1, p2}, Loh;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 21
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_3
    invoke-virtual {v0}, Lrn;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lrn;->a()V

    .line 25
    throw p1
.end method

.method final a()Z
    .locals 2

    iget-object v0, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Lmt;->a:Landroid/widget/ImageView;

    .line 1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Loh;->a()V

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_1
    return-void
.end method
