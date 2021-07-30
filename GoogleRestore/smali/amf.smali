.class public final Lamf;
.super Lalv;
.source "PG"


# instance fields
.field private a:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final b:Landroid/graphics/drawable/Animatable2$AnimationCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lalv;-><init>()V

    .line 2
    invoke-static {}, Lbjg;->a()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v0

    iput-object v0, p0, Lamf;->b:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 5
    const v0, 0x7f0d004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 6
    const p2, 0x7f0a00a1

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p2, p0, Lamf;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    const-class p2, Lcly;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p2

    check-cast p2, Lcly;

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Lclz;-><init>(Landroid/content/Context;)V

    .line 9
    const v1, 0x7f110194

    invoke-virtual {v0, v1}, Lclz;->a(I)V

    new-instance v1, Lamc;

    invoke-direct {v1, p0}, Lamc;-><init>(Lamf;)V

    iput-object v1, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    iput v1, v0, Lclz;->c:I

    const v1, 0x7f1201a4

    iput v1, v0, Lclz;->d:I

    .line 10
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Lcly;->a(Lcma;)V

    new-instance v0, Lclz;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lclz;-><init>(Landroid/content/Context;)V

    .line 13
    const v1, 0x7f110150

    invoke-virtual {v0, v1}, Lclz;->a(I)V

    new-instance v1, Lamd;

    invoke-direct {v1, p0}, Lamd;-><init>(Lamf;)V

    iput-object v1, v0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v1, 0x7

    iput v1, v0, Lclz;->c:I

    const v1, 0x7f1201a5

    iput v1, v0, Lclz;->d:I

    .line 14
    invoke-virtual {v0}, Lclz;->a()Lcma;

    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Lcly;->b(Lcma;)V

    .line 16
    const p2, 0x7f0a00a2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lame;

    .line 17
    invoke-direct {v0, p0}, Lame;-><init>(Lamf;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final d()Lbcs;
    .locals 1

    .line 3
    sget-object v0, Lbcs;->J:Lbcs;

    return-object v0
.end method

.method public final e()Lamp;
    .locals 1

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    .line 4
    check-cast v0, Lamp;

    return-object v0
.end method

.method public final j()V
    .locals 1

    .line 18
    invoke-super {p0}, Lalv;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lamf;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-void
.end method

.method public final y()V
    .locals 2

    .line 22
    invoke-super {p0}, Lalv;->y()V

    iget-object v0, p0, Lamf;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lamf;->b:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    iget-object v0, p0, Lamf;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 24
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    iget-object v0, p0, Lamf;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 25
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 2

    .line 19
    invoke-super {p0}, Lalv;->z()V

    iget-object v0, p0, Lamf;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    iget-object v0, p0, Lamf;->a:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lamf;->b:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_0
    return-void
.end method
