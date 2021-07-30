.class public final Lcnh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcmb;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field private final b:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnh;->b:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    sget-object v0, Lcmi;->n:[I

    .line 3
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    new-instance v0, Lcmz;

    invoke-direct {v0, p1}, Lcmz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcna;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/ItemGroup;

    new-instance p3, Lcmq;

    .line 6
    invoke-direct {p3, p1}, Lcmq;-><init>(Lcms;)V

    .line 7
    invoke-virtual {p0}, Lcnh;->a()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    const/4 p1, 0x1

    .line 9
    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 10
    invoke-virtual {p0, p1, v1}, Lcnh;->a(II)V

    goto :goto_0

    .line 14
    :cond_1
    const/4 p1, 0x3

    .line 11
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    const/4 p3, 0x2

    .line 12
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 13
    invoke-virtual {p0, p1, p3}, Lcnh;->a(II)V

    .line 14
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, Lcnh;->c:Landroid/widget/ListView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcnh;->b:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v1, 0x102000a

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 16
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 17
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcnh;->c:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Lcnh;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcnh;->e:I

    iput p2, p0, Lcnh;->f:I

    .line 18
    invoke-virtual {p0}, Lcnh;->b()V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 19
    invoke-virtual {p0}, Lcnh;->a()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcnh;->b:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcnh;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcnh;->d:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v1, p0, Lcnh;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget v2, p0, Lcnh;->e:I

    iget v3, p0, Lcnh;->f:I

    iget-object v4, p0, Lcnh;->b:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 23
    invoke-static {v1, v2, v3, v4}, Lbwq;->a(Landroid/graphics/drawable/Drawable;IILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    iput-object v1, p0, Lcnh;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
