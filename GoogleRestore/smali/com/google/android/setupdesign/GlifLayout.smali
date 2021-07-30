.class public Lcom/google/android/setupdesign/GlifLayout;
.super Lckz;
.source "PG"


# instance fields
.field public c:Z

.field private d:Landroid/content/res/ColorStateList;

.field private e:Z

.field private f:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lckz;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    .line 4
    const/4 p1, 0x0

    const p2, 0x7f040290

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lckz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    .line 6
    const p1, 0x7f040290

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lckz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 10
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcmi;->g:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 11
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 12
    invoke-virtual {p0}, Lckz;->a()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    new-instance v1, Lcnf;

    .line 13
    invoke-direct {v1, p0, p1, p2}, Lcnf;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class v3, Lcnf;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;Lcmb;)V

    new-instance v1, Lcng;

    .line 14
    invoke-direct {v1, p0, p1, p2}, Lcng;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class p1, Lcng;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;Lcmb;)V

    new-instance p1, Lcnj;

    .line 15
    invoke-direct {p1, p0}, Lcnj;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    const-class p2, Lcnj;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;Lcmb;)V

    new-instance p1, Lcnm;

    .line 16
    invoke-direct {p1}, Lcnm;-><init>()V

    const-class p2, Lcnm;

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;Lcmb;)V

    const p1, 0x7f0a0190

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object p1

    .line 19
    instance-of p2, p1, Landroid/widget/ScrollView;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/widget/ScrollView;

    goto :goto_1

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_1
    if-eqz p1, :cond_2

    new-instance p2, Lbwp;

    .line 20
    invoke-direct {p2, p1}, Lbwp;-><init>(Landroid/widget/ScrollView;)V

    :cond_2
    const/4 p1, 0x2

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->d:Landroid/content/res/ColorStateList;

    .line 22
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->c()V

    const-class p2, Lcnj;

    .line 23
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object p2

    check-cast p2, Lcnj;

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p2, p2, Lcnj;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v1, 0x7f0a0189

    .line 25
    invoke-virtual {p2, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    if-eqz p2, :cond_3

    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v1, Lclu;->z:Lclu;

    invoke-virtual {p1, p2, v1}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result p1

    .line 31
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    nop

    .line 32
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->f:Landroid/content/res/ColorStateList;

    .line 33
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->c()V

    .line 34
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->e:Z

    .line 35
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->c()V

    const/4 p1, 0x3

    .line 36
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_5

    const p2, 0x7f0a018b

    .line 37
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 40
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final c()V
    .locals 2

    .line 62
    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->e:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcmh;

    .line 65
    invoke-direct {v1, v0}, Lcmh;-><init>(I)V

    goto :goto_1

    .line 67
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 66
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 65
    :goto_1
    const-class v0, Lcmc;

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v0

    check-cast v0, Lcmc;

    invoke-virtual {v0, v1}, Lcmc;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 64
    :cond_3
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    const p2, 0x7f0d00a9

    :cond_0
    const v0, 0x7f1201c1

    .line 61
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f0a0183

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lckz;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected final onFinishInflate()V
    .locals 9

    .line 41
    invoke-super {p0}, Lckz;->onFinishInflate()V

    const-class v0, Lcng;

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v0

    check-cast v0, Lcng;

    iget-object v1, v0, Lcng;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 43
    invoke-static {v1}, Lbwq;->a(Landroid/widget/FrameLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, v0, Lcng;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v1, 0x7f0a0187

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbwq;->a(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    :cond_1
    :goto_0
    const-class v0, Lcnf;

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v0

    check-cast v0, Lcnf;

    iget-object v1, v0, Lcnf;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 50
    invoke-static {v1}, Lbwq;->a(Landroid/widget/FrameLayout;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    iget-object v1, v0, Lcnf;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v2, 0x7f0a0175

    .line 51
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    new-instance v8, Lcnp;

    .line 52
    sget-object v3, Lclu;->A:Lclu;

    const/4 v4, 0x0

    sget-object v5, Lclu;->B:Lclu;

    sget-object v6, Lclu;->C:Lclu;

    .line 53
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbwq;->a(Landroid/content/Context;)I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcnp;-><init>(Lclu;Lclu;Lclu;Lclu;I)V

    .line 52
    invoke-static {v1, v8}, Lcqd;->a(Landroid/widget/TextView;Lcnp;)V

    :cond_3
    iget-object v0, v0, Lcnf;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v1, 0x7f0a0186

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v2

    sget-object v3, Lclu;->E:Lclu;

    .line 57
    invoke-virtual {v2, v1, v3}, Lclv;->a(Landroid/content/Context;Lclu;)I

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 50
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0a0185

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 60
    invoke-static {v0}, Lbwp;->a(Landroid/widget/TextView;)V

    :cond_5
    return-void
.end method
