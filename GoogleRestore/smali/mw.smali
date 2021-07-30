.class final Lmw;
.super Landroid/widget/PopupWindow;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    sget-object v1, Ljh;->s:[I

    invoke-static {p1, p2, v1, p3, v0}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object p1

    .line 4
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lrn;->f(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p1, p2, v0}, Lrn;->a(IZ)Z

    move-result p2

    .line 6
    invoke-static {p0, p2}, Lhz;->a(Landroid/widget/PopupWindow;Z)V

    :cond_0
    nop

    .line 7
    invoke-virtual {p1, v0}, Lrn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmw;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p1}, Lrn;->a()V

    return-void
.end method
