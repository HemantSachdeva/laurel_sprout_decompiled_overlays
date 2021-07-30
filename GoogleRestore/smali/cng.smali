.class public final Lcng;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcmb;


# instance fields
.field public final a:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private final b:I

.field private final c:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcng;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcng;->a()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcng;->b:I

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcng;->c:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 22
    :cond_0
    iput v1, p0, Lcng;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcng;->c:Landroid/widget/ImageView$ScaleType;

    .line 6
    :goto_0
    sget-object v0, Lcmi;->i:[I

    .line 7
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p0}, Lcng;->a()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    .line 22
    :cond_1
    const/16 p2, 0x8

    .line 11
    :goto_1
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const/4 p2, 0x2

    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 13
    invoke-virtual {p0}, Lcng;->a()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    invoke-virtual {p3}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v2

    if-nez p2, :cond_3

    iget v2, p0, Lcng;->b:I

    :cond_3
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_4

    .line 18
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    .line 22
    :cond_4
    iget-object p2, p0, Lcng;->c:Landroid/widget/ImageView$ScaleType;

    .line 18
    :goto_2
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_5
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_6

    .line 20
    invoke-virtual {p0}, Lcng;->a()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 21
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 22
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcng;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 23
    const v1, 0x7f0a0187

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method
