.class public final Lcey;
.super Lcfp;
.source "PG"


# instance fields
.field public Z:Landroid/support/v7/widget/RecyclerView;

.field public a:Lcek;

.field public aa:Landroid/support/v7/widget/RecyclerView;

.field public ab:Landroid/view/View;

.field public ac:I

.field private ae:I

.field private af:Landroid/view/View;

.field public b:Lceh;

.field public c:Lcfj;

.field public d:Lcej;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcfp;-><init>()V

    return-void
.end method

.method static b(Landroid/content/Context;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07014b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private final f(I)V
    .locals 2

    iget-object v0, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lceo;

    .line 59
    invoke-direct {v1, p0, p1}, Lceo;-><init>(Lcey;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcey;->ae:I

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcej;

    .line 10
    invoke-direct {v1, v0}, Lcej;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcey;->d:Lcej;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcey;->b:Lceh;

    iget-object v1, v1, Lceh;->a:Lcfj;

    .line 12
    invoke-static {v0}, Lcfe;->b(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    const v4, 0x7f0d006c

    goto :goto_0

    .line 53
    :cond_0
    const v4, 0x7f0d0071

    .line 12
    :goto_0
    nop

    .line 13
    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00ea

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 15
    new-instance v4, Lcep;

    invoke-direct {v4}, Lcep;-><init>()V

    invoke-static {p2, v4}, Lge;->a(Landroid/view/View;Lfl;)V

    .line 16
    new-instance v4, Lcen;

    invoke-direct {v4}, Lcen;-><init>()V

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 17
    iget v1, v1, Lcfj;->e:I

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 18
    invoke-virtual {p2, v5}, Landroid/widget/GridView;->setEnabled(Z)V

    const p2, 0x7f0a00ed

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lceq;

    .line 20
    invoke-direct {p2, p0, v2, v2}, Lceq;-><init>(Lcey;II)V

    iget-object v1, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    .line 21
    invoke-virtual {v1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Lqk;)V

    iget-object p2, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    .line 22
    const-string v1, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lcfn;

    iget-object v1, p0, Lcey;->a:Lcek;

    iget-object v2, p0, Lcey;->b:Lceh;

    new-instance v4, Lcer;

    .line 23
    invoke-direct {v4, p0}, Lcer;-><init>(Lcey;)V

    invoke-direct {p2, v0, v1, v2, v4}, Lcfn;-><init>(Landroid/content/Context;Lcek;Lceh;Lcer;)V

    iget-object v1, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    .line 24
    invoke-virtual {v1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Lqc;)V

    .line 25
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 26
    const v2, 0x7f0a00f0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcey;->Z:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_1

    iput-boolean v3, v4, Landroid/support/v7/widget/RecyclerView;->p:Z

    new-instance v5, Loz;

    .line 27
    invoke-direct {v5, v1}, Loz;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->a(Lqk;)V

    iget-object v1, p0, Lcey;->Z:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcfw;

    .line 28
    invoke-direct {v4, p0}, Lcfw;-><init>(Lcey;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->a(Lqc;)V

    iget-object v1, p0, Lcey;->Z:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lces;

    .line 29
    invoke-direct {v4, p0}, Lces;-><init>(Lcey;)V

    .line 30
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->a(Lyj;)V

    :cond_1
    nop

    .line 31
    const v1, 0x7f0a00e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 33
    const-string v4, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    new-instance v4, Lcet;

    .line 34
    invoke-direct {v4, p0}, Lcet;-><init>(Lcey;)V

    invoke-static {v1, v4}, Lge;->a(Landroid/view/View;Lfl;)V

    const v4, 0x7f0a00e7

    .line 35
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 36
    const-string v5, "NAVIGATION_PREV_TAG"

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f0a00e6

    .line 37
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 38
    const-string v6, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcey;->af:Landroid/view/View;

    const v2, 0x7f0a00e9

    .line 40
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcey;->ab:Landroid/view/View;

    .line 41
    invoke-virtual {p0, v3}, Lcey;->e(I)V

    iget-object v2, p0, Lcey;->c:Lcfj;

    iget-object v2, v2, Lcfj;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lceu;

    .line 43
    invoke-direct {v3, p0, p2, v1}, Lceu;-><init>(Lcey;Lcfn;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->a(Laqc;)V

    new-instance v2, Lcev;

    .line 44
    invoke-direct {v2, p0}, Lcev;-><init>(Lcey;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcew;

    .line 45
    invoke-direct {v1, p0, p2}, Lcew;-><init>(Lcey;Lcfn;)V

    invoke-virtual {v5, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcex;

    .line 46
    invoke-direct {v1, p0, p2}, Lcex;-><init>(Lcey;Lcfn;)V

    invoke-virtual {v4, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_2
    invoke-static {v0}, Lcfe;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lqm;

    .line 48
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqm;-><init>([B)V

    iget-object v2, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Lqm;->a:Landroid/support/v7/widget/RecyclerView;

    if-ne v3, v2, :cond_3

    goto :goto_1

    .line 54
    :cond_3
    if-eqz v3, :cond_4

    iget-object v4, v0, Lqm;->c:Laqc;

    .line 49
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->b(Laqc;)V

    iget-object v3, v0, Lqm;->a:Landroid/support/v7/widget/RecyclerView;

    iput-object v1, v3, Landroid/support/v7/widget/RecyclerView;->B:Lqm;

    :cond_4
    iput-object v2, v0, Lqm;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Lqm;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_6

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->B:Lqm;

    if-nez v2, :cond_5

    .line 50
    iget-object v2, v0, Lqm;->c:Laqc;

    .line 51
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Laqc;)V

    iget-object v1, v0, Lqm;->a:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView;->B:Lqm;

    new-instance v2, Landroid/widget/Scroller;

    .line 52
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lqm;->b:Landroid/widget/Scroller;

    .line 53
    invoke-virtual {v0}, Lqm;->a()V

    goto :goto_1

    .line 49
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    const-string p2, "An instance of OnFlingListener already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_6
    :goto_1
    iget-object v0, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcey;->c:Lcfj;

    .line 54
    invoke-virtual {p2, v1}, Lcfn;->a(Lcfj;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->b(I)V

    return-object p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 4
    invoke-super {p0, p1}, Lcfp;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    .line 5
    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcey;->ae:I

    .line 6
    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcek;

    iput-object v0, p0, Lcey;->a:Lcek;

    .line 7
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lceh;

    iput-object v0, p0, Lcey;->b:Lceh;

    .line 8
    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcfj;

    iput-object p1, p0, Lcey;->c:Lcfj;

    return-void
.end method

.method final a(Lcfj;)V
    .locals 3

    iget-object v0, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 60
    check-cast v0, Lcfn;

    .line 61
    invoke-virtual {v0, p1}, Lcfn;->a(Lcfj;)I

    move-result v1

    iget-object v2, p0, Lcey;->c:Lcfj;

    .line 62
    invoke-virtual {v0, v2}, Lcfn;->a(Lcfj;)I

    move-result v0

    sub-int v0, v1, v0

    .line 63
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput-object p1, p0, Lcey;->c:Lcfj;

    const/4 p1, 0x3

    if-le v2, p1, :cond_1

    if-lez v0, :cond_0

    iget-object p1, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    .line 67
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->b(I)V

    .line 68
    invoke-direct {p0, v1}, Lcey;->f(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    .line 65
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->b(I)V

    .line 66
    invoke-direct {p0, v1}, Lcey;->f(I)V

    return-void

    .line 64
    :cond_1
    invoke-direct {p0, v1}, Lcey;->f(I)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcey;->ae:I

    .line 55
    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcey;->a:Lcek;

    .line 56
    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcey;->b:Lceh;

    .line 57
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcey;->c:Lcfj;

    .line 58
    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method final d()Lph;
    .locals 1

    iget-object v0, p0, Lcey;->aa:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    .line 3
    check-cast v0, Lph;

    return-object v0
.end method

.method final e(I)V
    .locals 4

    iput p1, p0, Lcey;->ac:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcey;->Z:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView;->k:Lqk;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    .line 69
    check-cast p1, Lcfw;

    iget-object v3, p0, Lcey;->c:Lcfj;

    iget v3, v3, Lcfj;->d:I

    iget-object p1, p1, Lcfw;->c:Lcey;

    iget-object p1, p1, Lcey;->b:Lceh;

    iget-object p1, p1, Lceh;->a:Lcfj;

    .line 70
    iget p1, p1, Lcfj;->d:I

    sub-int/2addr v3, p1

    .line 71
    invoke-virtual {v2, v3}, Lqk;->c(I)V

    iget-object p1, p0, Lcey;->af:Landroid/view/View;

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcey;->ab:Landroid/view/View;

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcey;->af:Landroid/view/View;

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcey;->ab:Landroid/view/View;

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcey;->c:Lcfj;

    .line 76
    invoke-virtual {p0, p1}, Lcey;->a(Lcfj;)V

    return-void
.end method
