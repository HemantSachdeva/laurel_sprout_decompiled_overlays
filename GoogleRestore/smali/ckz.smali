.class public Lckz;
.super Lcom/google/android/setupcompat/internal/TemplateLayout;
.source "PG"


# instance fields
.field private c:Z

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lckz;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lckz;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 4
    const/4 p1, 0x0

    const p2, 0x7f040268

    invoke-direct {p0, p1, p2}, Lckz;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    const p1, 0x7f040268

    invoke-direct {p0, p2, p1}, Lckz;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-direct {p0, p2, p3}, Lckz;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 48
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 50
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 51
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lckz;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    const-string v0, "Cannot find instance of Activity in parent tree"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 10
    invoke-virtual {p0}, Lckz;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcla;->c:[I

    .line 11
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 12
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v3, :cond_0

    const/16 v0, 0x400

    .line 15
    invoke-virtual {p0, v0}, Lckz;->setSystemUiVisibility(I)V

    :cond_0
    new-instance v0, Lcmc;

    iget-object v3, p0, Lckz;->d:Landroid/app/Activity;

    .line 16
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v0, p0, v3, p1, p2}, Lcmc;-><init>(Lckz;Landroid/view/Window;Landroid/util/AttributeSet;I)V

    const-class v3, Lcmc;

    .line 17
    invoke-virtual {p0, v3, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;Lcmb;)V

    new-instance v0, Lcmd;

    iget-object v3, p0, Lckz;->d:Landroid/app/Activity;

    .line 18
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcmd;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V

    const-class v3, Lcmd;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;Lcmb;)V

    .line 19
    new-instance v0, Lcly;

    invoke-direct {v0, p0, p1, p2}, Lcly;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class v3, Lcly;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;Lcmb;)V

    const-class v0, Lcmd;

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v0

    check-cast v0, Lcmd;

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v0, Lcmd;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcla;->e:[I

    .line 23
    invoke-virtual {v3, p1, v4, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, v0, Lcmd;->d:I

    .line 25
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v0, Lcmd;->b:Landroid/view/Window;

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcmd;->c:Z

    if-eqz v3, :cond_1

    iget-object p2, v0, Lcmd;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 26
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 27
    invoke-static {p2}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v3

    sget-object v4, Lclu;->c:Lclu;

    .line 28
    invoke-virtual {v3, p2, v4}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result p2

    :cond_1
    iget-object v3, v0, Lcmd;->b:Landroid/view/Window;

    .line 29
    invoke-virtual {v3, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 30
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p2, v0, Lcmd;->b:Landroid/view/Window;

    const/16 v3, 0x10

    if-eqz p2, :cond_4

    .line 31
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_3

    goto :goto_0

    .line 42
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    nop

    .line 31
    :goto_0
    nop

    .line 32
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, v0, Lcmd;->b:Landroid/view/Window;

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcmd;->c:Z

    if-eqz v1, :cond_5

    iget-object p2, v0, Lcmd;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 34
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 35
    invoke-static {p2}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v1

    sget-object v2, Lclu;->e:Lclu;

    .line 36
    invoke-virtual {v1, p2, v2}, Lclv;->d(Landroid/content/Context;Lclu;)Z

    move-result p2

    :cond_5
    if-eqz p2, :cond_6

    iget-object p2, v0, Lcmd;->b:Landroid/view/Window;

    .line 37
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v0, v0, Lcmd;->b:Landroid/view/Window;

    .line 38
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr v0, v3

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 47
    :cond_6
    iget-object p2, v0, Lcmd;->b:Landroid/view/Window;

    .line 40
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object v0, v0, Lcmd;->b:Landroid/view/Window;

    .line 41
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p1, p0, Lckz;->d:Landroid/app/Activity;

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, -0x80000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lckz;->d:Landroid/app/Activity;

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    iget-object p1, p0, Lckz;->d:Landroid/app/Activity;

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x8000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    const p2, 0x7f0d008e

    :cond_0
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f0a0172

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lckz;->c:Z

    .line 60
    invoke-virtual {p0}, Lckz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lckz;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lckz;->d:Landroid/app/Activity;

    .line 61
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcne;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 62
    invoke-virtual {p0}, Lckz;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcla;->c:[I

    .line 63
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const-string v2, "PartnerCustomizedLayout"

    if-nez p2, :cond_0

    iget-object p2, p0, Lckz;->d:Landroid/app/Activity;

    .line 65
    invoke-virtual {p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attribute sucUsePartnerResource not found in "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_2

    .line 66
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    nop

    .line 66
    :goto_0
    iput-boolean v0, p0, Lckz;->c:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x3

    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lckz;->d:Landroid/app/Activity;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lckz;->c:Z

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x5b

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "activity="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isSetupFlow="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " enablePartnerResourceLoading=true usePartnerResourceAttr="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 3

    iget-boolean v0, p0, Lckz;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_1

    return v1

    .line 99
    :cond_1
    invoke-virtual {p0}, Lckz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v0

    iget-object v0, v0, Lclv;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    .line 53
    invoke-super {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lckz;->d:Landroid/app/Activity;

    .line 54
    invoke-static {v0}, Lclg;->a(Landroid/app/Activity;)V

    const-class v0, Lcly;

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v0

    check-cast v0, Lcly;

    iget-object v1, v0, Lcly;->i:Lclt;

    .line 56
    invoke-virtual {v0}, Lcly;->b()Z

    move-result v2

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lclt;->a(ZZ)V

    iget-object v1, v0, Lcly;->i:Lclt;

    .line 58
    invoke-virtual {v0}, Lcly;->e()Z

    move-result v0

    .line 59
    invoke-virtual {v1, v0, v3}, Lclt;->b(ZZ)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 11

    .line 70
    invoke-super {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onDetachedFromWindow()V

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lckz;->d:Landroid/app/Activity;

    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcne;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcly;

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v0

    check-cast v0, Lcly;

    iget-object v1, v0, Lcly;->i:Lclt;

    .line 74
    invoke-virtual {v0}, Lcly;->b()Z

    move-result v2

    invoke-virtual {v0}, Lcly;->e()Z

    move-result v3

    iget-object v4, v1, Lclt;->a:Ljava/lang/String;

    .line 75
    invoke-static {v4, v2}, Lclt;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lclt;->a:Ljava/lang/String;

    iget-object v2, v1, Lclt;->b:Ljava/lang/String;

    .line 76
    invoke-static {v2, v3}, Lclt;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lclt;->b:Ljava/lang/String;

    iget-object v1, v0, Lcly;->c:Lcma;

    iget-object v2, v0, Lcly;->d:Lcma;

    if-eqz v1, :cond_0

    .line 77
    const-string v3, "PrimaryFooterButton"

    invoke-virtual {v1, v3}, Lcma;->a(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_0
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 77
    :goto_0
    if-eqz v2, :cond_1

    .line 79
    const-string v3, "SecondaryFooterButton"

    invoke-virtual {v2, v3}, Lcma;->a(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_1

    .line 80
    :cond_1
    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 79
    :goto_1
    iget-object v0, v0, Lcly;->i:Lclt;

    new-instance v3, Landroid/os/PersistableBundle;

    .line 81
    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v4, v0, Lclt;->a:Ljava/lang/String;

    .line 82
    const-string v5, "PrimaryButtonVisibility"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lclt;->b:Ljava/lang/String;

    .line 83
    const-string v4, "SecondaryButtonVisibility"

    invoke-virtual {v3, v4, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v4, v0, [Landroid/os/PersistableBundle;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-instance v2, Ljava/util/ArrayList;

    .line 84
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/os/PersistableBundle;

    aput-object v3, v6, v5

    aput-object v1, v6, v0

    .line 85
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/PersistableBundle;

    .line 87
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 88
    check-cast v6, Landroid/os/PersistableBundle;

    .line 89
    invoke-virtual {v6}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v8}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v8, v10, v5

    xor-int/lit8 v8, v9, 0x1

    .line 91
    const-string v9, "Found duplicate key [%s] while attempting to merge bundles."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-static {v8, v9}, Lcln;->a(ZLjava/lang/String;)V

    goto :goto_3

    .line 93
    :cond_2
    invoke-virtual {v1, v6}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {p0}, Lckz;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lckz;->d:Landroid/app/Activity;

    .line 95
    const-string v3, "SetupCompatMetrics"

    invoke-static {v3, v2}, Lcom/google/android/setupcompat/logging/MetricKey;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/setupcompat/logging/CustomEvent;->a(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcls;->a(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V

    return-void

    .line 78
    :cond_4
    return-void
.end method
