.class public Lmu;
.super Landroid/widget/ImageView;
.source "PG"


# instance fields
.field private final a:Lmk;

.field private final b:Lmt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lrk;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Lmu;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lri;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lmk;

    .line 4
    invoke-direct {p1, p0}, Lmk;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lmu;->a:Lmk;

    .line 5
    invoke-virtual {p1, p2, p3}, Lmk;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Lmt;

    .line 6
    invoke-direct {p1, p0}, Lmt;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lmu;->b:Lmt;

    .line 7
    invoke-virtual {p1, p2, p3}, Lmt;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 8
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lmu;->a:Lmk;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lmk;->a()V

    :cond_0
    iget-object v0, p0, Lmu;->b:Lmt;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lmt;->b()V

    :cond_1
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    iget-object v0, p0, Lmu;->b:Lmt;

    .line 11
    invoke-virtual {v0}, Lmt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmu;->a:Lmk;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lmk;->b()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lmu;->a:Lmk;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Lmk;->a(I)V

    :cond_0
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lmu;->b:Lmt;

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lmt;->b()V

    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmu;->b:Lmt;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lmt;->b()V

    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lmu;->b:Lmt;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p1}, Lmt;->a(I)V

    :cond_0
    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lmu;->b:Lmt;

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Lmt;->b()V

    :cond_0
    return-void
.end method
