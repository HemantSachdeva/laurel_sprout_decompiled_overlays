.class public final Lalj;
.super Lalv;
.source "PG"

# interfaces
.implements Lcmw;


# instance fields
.field private a:Lcom/google/android/setupdesign/GlifLayout;

.field private b:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final c:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lalv;-><init>()V

    .line 2
    invoke-static {}, Lbjg;->a()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v0

    iput-object v0, p0, Lalj;->c:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 3
    const-string v0, "restore.feature.use_samsung_smart_switch_flow"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lalj;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 6
    const v0, 0x7f0d00d8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    iput-object p1, p0, Lalj;->a:Lcom/google/android/setupdesign/GlifLayout;

    .line 7
    const p2, 0x7f11008f

    invoke-virtual {p0, p1, p2}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;I)V

    iget-object p1, p0, Lalj;->a:Lcom/google/android/setupdesign/GlifLayout;

    .line 8
    const p2, 0x7f0a0185

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object p2

    .line 9
    invoke-static {p2}, Laqc;->a(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const p2, 0x7f110088

    goto :goto_0

    .line 16
    :cond_0
    const p2, 0x7f110089

    .line 10
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-boolean p1, p0, Lalj;->d:Z

    const p2, 0x7f0a006f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lalj;->a:Lcom/google/android/setupdesign/GlifLayout;

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0801f8

    .line 12
    invoke-static {p1, p2}, Lcno;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lalj;->a:Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f0a0108

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 21
    :cond_1
    iget-object p1, p0, Lalj;->a:Lcom/google/android/setupdesign/GlifLayout;

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lalj;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 15
    :goto_1
    iget-object p1, p0, Lalj;->a:Lcom/google/android/setupdesign/GlifLayout;

    const-class p2, Lcly;

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p1

    check-cast p1, Lcly;

    new-instance p2, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 18
    invoke-direct {p2, v0}, Lclz;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 19
    invoke-static {v0}, Laqc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f11008a

    .line 20
    invoke-virtual {p0, v0}, Lba;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 30
    :cond_2
    const v0, 0x7f11002e

    .line 21
    invoke-virtual {p0, v0}, Lba;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_2
    iput-object v0, p2, Lclz;->a:Ljava/lang/String;

    new-instance v0, Lale;

    .line 22
    invoke-direct {v0, p0}, Lale;-><init>(Lalj;)V

    iput-object v0, p2, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v0, 0x7

    iput v0, p2, Lclz;->c:I

    const v0, 0x7f1201a5

    iput v0, p2, Lclz;->d:I

    .line 23
    invoke-virtual {p2}, Lclz;->a()Lcma;

    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lcly;->b(Lcma;)V

    new-instance p2, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 25
    invoke-direct {p2, v0}, Lclz;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110194

    .line 26
    invoke-virtual {p2, v0}, Lclz;->a(I)V

    iget-boolean v0, p0, Lalj;->d:Z

    if-nez v0, :cond_3

    new-instance v0, Lalf;

    .line 32
    invoke-direct {v0, p0}, Lalf;-><init>(Lalj;)V

    goto :goto_3

    .line 34
    :cond_3
    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 27
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 28
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lalg;

    .line 31
    invoke-direct {v0, p0}, Lalg;-><init>(Lalj;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lalh;

    .line 30
    invoke-direct {v0, p0}, Lalh;-><init>(Lalj;)V

    .line 32
    :goto_3
    iput-object v0, p2, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v0, 0x5

    iput v0, p2, Lclz;->c:I

    const v0, 0x7f1201a4

    iput v0, p2, Lclz;->d:I

    .line 33
    invoke-virtual {p2}, Lclz;->a()Lcma;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lcly;->a(Lcma;)V

    iget-object p1, p0, Lalj;->a:Lcom/google/android/setupdesign/GlifLayout;

    return-object p1
.end method

.method public final a(Lcmo;)V
    .locals 1

    .line 35
    check-cast p1, Lcom/google/android/setupdesign/items/Item;

    iget p1, p1, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    const v0, 0x7f0a009c

    if-ne p1, v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lalj;->e()Lali;

    move-result-object p1

    invoke-interface {p1}, Lali;->a()V

    return-void

    :cond_0
    const v0, 0x7f0a009b

    if-ne p1, v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lalj;->e()Lali;

    move-result-object p1

    invoke-interface {p1}, Lali;->f()V

    :cond_1
    return-void
.end method

.method public final d()Lbcs;
    .locals 1

    .line 4
    sget-object v0, Lbcs;->b:Lbcs;

    return-object v0
.end method

.method public final e()Lali;
    .locals 1

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    .line 5
    check-cast v0, Lali;

    return-object v0
.end method

.method public final y()V
    .locals 2

    .line 41
    invoke-super {p0}, Lalv;->y()V

    iget-object v0, p0, Lalj;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lalj;->c:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    iget-object v0, p0, Lalj;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 43
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 2

    .line 38
    invoke-super {p0}, Lalv;->z()V

    iget-object v0, p0, Lalj;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lalj;->c:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    iget-object v0, p0, Lalj;->b:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    return-void
.end method
