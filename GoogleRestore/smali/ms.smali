.class public Lms;
.super Landroid/widget/ImageButton;
.source "PG"


# instance fields
.field private final a:Lmk;

.field private final b:Lmt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lms;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const v0, 0x7f040175

    invoke-direct {p0, p1, p2, v0}, Lms;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lrk;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lms;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lri;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lmk;

    .line 5
    invoke-direct {p1, p0}, Lmk;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lms;->a:Lmk;

    .line 6
    invoke-virtual {p1, p2, p3}, Lmk;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Lmt;

    .line 7
    invoke-direct {p1, p0}, Lmt;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lms;->b:Lmt;

    .line 8
    invoke-virtual {p1, p2, p3}, Lmt;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 9
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    iget-object v0, p0, Lms;->a:Lmk;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lmk;->a()V

    :cond_0
    iget-object v0, p0, Lms;->b:Lmt;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lmt;->b()V

    :cond_1
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    iget-object v0, p0, Lms;->b:Lmt;

    .line 12
    invoke-virtual {v0}, Lmt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

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

    .line 13
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lms;->a:Lmk;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Lmk;->b()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lms;->a:Lmk;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1}, Lmk;->a(I)V

    :cond_0
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lms;->b:Lmt;

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lmt;->b()V

    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lms;->b:Lmt;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lmt;->b()V

    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lms;->b:Lmt;

    .line 21
    invoke-virtual {v0, p1}, Lmt;->a(I)V

    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lms;->b:Lmt;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lmt;->b()V

    :cond_0
    return-void
.end method
