.class public final Lalz;
.super Lalv;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lalv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 4
    const v0, 0x7f0d004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 5
    const p2, 0x7f110134

    invoke-virtual {p0, p1, p2}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;I)V

    .line 6
    const p2, 0x7f0a01cf

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 7
    const v1, 0x7f080287

    invoke-static {v0, v1}, Lcno;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-class p2, Lcly;

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p2

    check-cast p2, Lcly;

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lclz;-><init>(Landroid/content/Context;)V

    .line 11
    const v1, 0x7f1100d1

    invoke-virtual {v0, v1}, Lclz;->a(I)V

    new-instance v1, Lalw;

    invoke-direct {v1, p0}, Lalw;-><init>(Lalz;)V

    iput-object v1, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v1, 0x7

    iput v1, v0, Lclz;->c:I

    const v1, 0x7f1201a5

    iput v1, v0, Lclz;->d:I

    .line 12
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 13
    invoke-virtual {p2, v0}, Lcly;->b(Lcma;)V

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lclz;-><init>(Landroid/content/Context;)V

    .line 15
    const v1, 0x7f110194

    invoke-virtual {v0, v1}, Lclz;->a(I)V

    new-instance v1, Lalx;

    invoke-direct {v1, p0}, Lalx;-><init>(Lalz;)V

    iput-object v1, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    iput v1, v0, Lclz;->c:I

    const v1, 0x7f1201a4

    iput v1, v0, Lclz;->d:I

    .line 16
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 17
    invoke-virtual {p2, v0}, Lcly;->a(Lcma;)V

    return-object p1
.end method

.method public final d()Lbcs;
    .locals 1

    .line 2
    sget-object v0, Lbcs;->c:Lbcs;

    return-object v0
.end method

.method public final e()Laly;
    .locals 1

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    .line 3
    check-cast v0, Laly;

    return-object v0
.end method
