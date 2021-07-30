.class public final Lajk;
.super Lajh;
.source "PG"


# instance fields
.field public c:Landroid/widget/TextView;

.field private d:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lajh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 3
    const v0, 0x7f0d0061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    move-object p2, p1

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Lajh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;Ljava/lang/CharSequence;)V

    .line 5
    const v0, 0x7f0a00d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    iput-object v0, p0, Lajk;->d:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    new-instance v1, Lajj;

    .line 6
    invoke-direct {v1, p0}, Lajj;-><init>(Lajk;)V

    iput-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->i:Lajj;

    const-class v0, Lcly;

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p2

    check-cast p2, Lcly;

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Lclz;-><init>(Landroid/content/Context;)V

    .line 9
    const v1, 0x7f110039

    invoke-virtual {v0, v1}, Lclz;->a(I)V

    new-instance v1, Laji;

    invoke-direct {v1, p0}, Laji;-><init>(Lajk;)V

    iput-object v1, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v1, 0x2

    iput v1, v0, Lclz;->c:I

    const v1, 0x7f1201a5

    iput v1, v0, Lclz;->d:I

    .line 10
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Lcly;->b(Lcma;)V

    .line 12
    const p2, 0x7f0a00d6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lajk;->c:Landroid/widget/TextView;

    return-object p1
.end method

.method public final a(Lauu;)V
    .locals 1

    iget-object v0, p0, Lajk;->d:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;->a()V

    iget-object v0, p0, Lajk;->c:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p0, p1}, Lajh;->b(Lauu;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lajk;->c:Landroid/widget/TextView;

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lajk;->c:Landroid/widget/TextView;

    .line 17
    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public final d()Lbcs;
    .locals 1

    .line 2
    sget-object v0, Lbcs;->O:Lbcs;

    return-object v0
.end method

.method public final j()V
    .locals 1

    .line 13
    invoke-super {p0}, Lajh;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lajk;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lajk;->d:Lcom/google/android/apps/pixelmigrate/cloudrestore/crypto/pattern/LockPatternView;

    return-void
.end method
