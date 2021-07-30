.class public Lcom/google/android/setupdesign/GlifListLayout;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "PG"


# instance fields
.field private d:Lcnh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifListLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifListLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 4
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifListLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifListLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifListLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final b(Landroid/util/AttributeSet;I)V
    .locals 1

    new-instance v0, Lcnh;

    .line 11
    invoke-direct {v0, p0, p1, p2}, Lcnh;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->d:Lcnh;

    const-class p1, Lcnh;

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;Lcmb;)V

    const-class p1, Lcnm;

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p1

    check-cast p1, Lcnm;

    new-instance p2, Lcni;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->c()Landroid/widget/ListView;

    invoke-direct {p2, p1}, Lcni;-><init>(Lcnm;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    const p2, 0x7f0d009e

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x102000a

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public final c()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->d:Lcnh;

    .line 10
    invoke-virtual {v0}, Lcnh;->a()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 16
    invoke-super/range {p0 .. p5}, Lcom/google/android/setupdesign/GlifLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/setupdesign/GlifListLayout;->d:Lcnh;

    iget-object p2, p1, Lcnh;->a:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p1}, Lcnh;->b()V

    :cond_0
    return-void
.end method
