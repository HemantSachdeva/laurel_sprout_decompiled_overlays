.class public final Lgm;
.super Lgn;
.source "PG"


# instance fields
.field final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgn;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lgm;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lgu;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lgn;-><init>()V

    .line 4
    invoke-virtual {p1}, Lgu;->j()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    .line 5
    :goto_0
    iput-object v0, p0, Lgm;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public final a()Lgu;
    .locals 1

    iget-object v0, p0, Lgm;->a:Landroid/view/WindowInsets$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lgu;->a(Landroid/view/WindowInsets;)Lgu;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ldz;)V
    .locals 1

    iget-object v0, p0, Lgm;->a:Landroid/view/WindowInsets$Builder;

    .line 9
    invoke-virtual {p1}, Ldz;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public final b(Ldz;)V
    .locals 1

    iget-object v0, p0, Lgm;->a:Landroid/view/WindowInsets$Builder;

    .line 8
    invoke-virtual {p1}, Ldz;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
