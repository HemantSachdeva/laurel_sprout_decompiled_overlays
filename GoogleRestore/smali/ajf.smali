.class public final Lajf;
.super Lalv;
.source "PG"


# static fields
.field private static final a:Laqd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "KeyRecoveryInstructionFragment"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lajf;->a:Laqd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lalv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lba;->k:Landroid/os/Bundle;

    .line 4
    const-string v1, "ARG_DEVICE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lajf;->a:Laqd;

    new-array p2, v1, [Ljava/lang/Object;

    .line 5
    const-string v0, "deviceName = null"

    invoke-virtual {p1, v0, p2}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v2

    .line 6
    check-cast v2, Laje;

    new-instance v3, Lalu;

    .line 7
    invoke-direct {v3, p0, p1, p2}, Lalu;-><init>(Lalv;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    const p1, 0x7f080264

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v3, Lalu;->d:Ljava/lang/Integer;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const p2, 0x7f110100

    .line 9
    invoke-virtual {p0, p2, p1}, Lba;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lalu;->e:Ljava/lang/CharSequence;

    iget-object p1, v3, Lalu;->a:Lalv;

    const p2, 0x7f1100ff

    .line 10
    invoke-virtual {p1, p2}, Lba;->a(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v3, Lalu;->f:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lajc;

    invoke-direct {p1, v2}, Lajc;-><init>(Laje;)V

    new-instance p2, Lclz;

    iget-object v0, v3, Lalu;->a:Lalv;

    invoke-virtual {v0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 12
    invoke-direct {p2, v0}, Lclz;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110194

    .line 13
    invoke-virtual {p2, v0}, Lclz;->a(I)V

    const/4 v0, 0x5

    iput v0, p2, Lclz;->c:I

    new-instance v0, Lalq;

    .line 14
    invoke-direct {v0, p1}, Lalq;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p2, Lclz;->b:Landroid/view/View$OnClickListener;

    const p1, 0x7f1201a4

    iput p1, p2, Lclz;->d:I

    .line 15
    invoke-virtual {p2}, Lclz;->a()Lcma;

    move-result-object p1

    iput-object p1, v3, Lalu;->g:Lcma;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lajd;

    invoke-direct {p1, v2}, Lajd;-><init>(Laje;)V

    new-instance p2, Lclz;

    iget-object v0, v3, Lalu;->a:Lalv;

    invoke-virtual {v0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 17
    invoke-direct {p2, v0}, Lclz;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11002f

    .line 18
    invoke-virtual {p2, v0}, Lclz;->a(I)V

    const/4 v0, 0x7

    iput v0, p2, Lclz;->c:I

    new-instance v0, Lalr;

    .line 19
    invoke-direct {v0, p1}, Lalr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p2, Lclz;->b:Landroid/view/View$OnClickListener;

    const p1, 0x7f1201a5

    iput p1, p2, Lclz;->d:I

    .line 20
    invoke-virtual {p2}, Lclz;->a()Lcma;

    move-result-object p1

    iput-object p1, v3, Lalu;->h:Lcma;

    iget-object p1, v3, Lalu;->b:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0040

    iget-object v0, v3, Lalu;->c:Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    iget-object p2, v3, Lalu;->a:Lalv;

    invoke-virtual {p2}, Lba;->p()Landroid/content/Context;

    move-result-object p2

    iget-object v0, v3, Lalu;->d:Ljava/lang/Integer;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Ltt;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-class v0, Lcng;

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v0

    check-cast v0, Lcng;

    .line 24
    invoke-virtual {v0}, Lcng;->a()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    const/16 v1, 0x8

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p2, v3, Lalu;->e:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    iget-object v0, v3, Lalu;->a:Lalv;

    .line 27
    invoke-virtual {v0, p1, p2}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p2, v3, Lalu;->f:Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    const p2, 0x7f0a0185

    .line 28
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, v3, Lalu;->f:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p2, v3, Lalu;->g:Lcma;

    if-eqz p2, :cond_5

    const-class p2, Lcly;

    .line 29
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p2

    check-cast p2, Lcly;

    iget-object v0, v3, Lalu;->g:Lcma;

    invoke-virtual {p2, v0}, Lcly;->a(Lcma;)V

    :cond_5
    iget-object p2, v3, Lalu;->h:Lcma;

    if-eqz p2, :cond_6

    const-class p2, Lcly;

    .line 30
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p2

    check-cast p2, Lcly;

    iget-object v0, v3, Lalu;->h:Lcma;

    invoke-virtual {p2, v0}, Lcly;->b(Lcma;)V

    :cond_6
    return-object p1
.end method

.method public final d()Lbcs;
    .locals 1

    .line 3
    sget-object v0, Lbcs;->N:Lbcs;

    return-object v0
.end method
