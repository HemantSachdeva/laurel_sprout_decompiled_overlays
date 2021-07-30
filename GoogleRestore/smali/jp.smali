.class public final Ljp;
.super Landroid/content/ContextWrapper;
.source "PG"


# instance fields
.field public a:I

.field private b:Landroid/content/res/Resources$Theme;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/res/Configuration;

.field private e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput p2, p0, Ljp;->a:I

    return-void
.end method

.method private final a()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Ljp;->e:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljp;->d:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 9
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Ljp;->e:Landroid/content/res/Resources;

    goto :goto_0

    .line 10
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Ljp;->d:Landroid/content/res/Configuration;

    .line 11
    invoke-virtual {p0, v0}, Ljp;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Ljp;->e:Landroid/content/res/Resources;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Ljp;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method private final b()V
    .locals 3

    iget-object v0, p0, Ljp;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    .line 17
    invoke-direct {p0}, Ljp;->a()Landroid/content/res/Resources;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Ljp;->b:Landroid/content/res/Resources$Theme;

    .line 19
    invoke-virtual {p0}, Ljp;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljp;->b:Landroid/content/res/Resources$Theme;

    .line 20
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_0
    iget-object v0, p0, Ljp;->b:Landroid/content/res/Resources$Theme;

    iget v1, p0, Ljp;->a:I

    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Ljp;->e:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Ljp;->d:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/res/Configuration;

    .line 5
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Ljp;->d:Landroid/content/res/Configuration;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    const-string v0, "Override configuration has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    const-string v0, "getResources() or getAssets() has already been called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 6
    invoke-direct {p0}, Ljp;->a()Landroid/content/res/Resources;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .line 8
    invoke-direct {p0}, Ljp;->a()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 13
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ljp;->c:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Ljp;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ljp;->c:Landroid/view/LayoutInflater;

    :cond_0
    iget-object p1, p0, Ljp;->c:Landroid/view/LayoutInflater;

    return-object p1

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljp;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Ljp;->b:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Ljp;->a:I

    if-nez v0, :cond_1

    const v0, 0x7f12025c

    iput v0, p0, Ljp;->a:I

    .line 16
    :cond_1
    invoke-direct {p0}, Ljp;->b()V

    iget-object v0, p0, Ljp;->b:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final setTheme(I)V
    .locals 1

    iget v0, p0, Ljp;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Ljp;->a:I

    .line 22
    invoke-direct {p0}, Ljp;->b()V

    :cond_0
    return-void
.end method
