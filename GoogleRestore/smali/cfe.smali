.class public final Lcfe;
.super Lav;
.source "PG"


# instance fields
.field public final Z:Ljava/util/LinkedHashSet;

.field public final aa:Ljava/util/LinkedHashSet;

.field public ab:Lcek;

.field public ac:Lcom/google/android/material/internal/CheckableImageButton;

.field public ad:Landroid/widget/Button;

.field private final ae:Ljava/util/LinkedHashSet;

.field private final af:Ljava/util/LinkedHashSet;

.field private ag:I

.field private ah:Lcfp;

.field private ai:Lceh;

.field private aj:Lcey;

.field private ak:I

.field private al:Ljava/lang/CharSequence;

.field private am:Z

.field private an:I

.field private ao:Landroid/widget/TextView;

.field private ap:Lchl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lav;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcfe;->Z:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcfe;->aa:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcfe;->ae:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcfe;->af:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private final Q()I
    .locals 1

    iget v0, p0, Lcfe;->ag:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcfe;->ab:Lcek;

    .line 11
    invoke-interface {v0}, Lcek;->e()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lcey;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 13
    const v1, 0x7f0401cd

    invoke-static {p0, v1, v0}, Lcsb;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101020d

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 3

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 7
    const v0, 0x7f070149

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 8
    invoke-static {}, Lcfj;->a()Lcfj;

    move-result-object v1

    iget v1, v1, Lcfj;->e:I

    add-int/2addr v0, v0

    .line 9
    const v2, 0x7f07014f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    .line 10
    const v2, 0x7f07015d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int v1, v1, p0

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final O()V
    .locals 5

    iget-object v0, p0, Lcfe;->ab:Lcek;

    .line 136
    invoke-interface {v0}, Lcek;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcfe;->ao:Landroid/widget/TextView;

    .line 137
    const v2, 0x7f110116

    invoke-virtual {p0, v2}, Lba;->b(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcfe;->ao:Landroid/widget/TextView;

    .line 139
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final P()V
    .locals 7

    .line 116
    invoke-virtual {p0}, Lba;->q()Landroid/content/Context;

    invoke-direct {p0}, Lcfe;->Q()I

    move-result v0

    iget-object v1, p0, Lcfe;->ab:Lcek;

    iget-object v2, p0, Lcfe;->ai:Lceh;

    new-instance v3, Lcey;

    .line 117
    invoke-direct {v3}, Lcey;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    .line 118
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string v5, "THEME_RES_ID_KEY"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v6, "GRID_SELECTOR_KEY"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, v2, Lceh;->c:Lcfj;

    .line 122
    const-string v6, "CURRENT_MONTH_KEY"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    invoke-virtual {v3, v4}, Lcey;->d(Landroid/os/Bundle;)V

    iput-object v3, p0, Lcfe;->aj:Lcey;

    iget-object v2, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, v2, Lcom/google/android/material/internal/CheckableImageButton;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcfe;->ab:Lcek;

    iget-object v3, p0, Lcfe;->ai:Lceh;

    new-instance v4, Lcfh;

    .line 124
    invoke-direct {v4}, Lcfh;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    .line 125
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 126
    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    invoke-virtual {v4, v6}, Lcfh;->d(Landroid/os/Bundle;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v4, p0, Lcfe;->aj:Lcey;

    .line 129
    :goto_0
    iput-object v4, p0, Lcfe;->ah:Lcfp;

    .line 130
    invoke-virtual {p0}, Lcfe;->O()V

    .line 131
    invoke-virtual {p0}, Lba;->u()Lbx;

    move-result-object v0

    invoke-virtual {v0}, Lbx;->a()Lch;

    move-result-object v0

    const v1, 0x7f0a00eb

    iget-object v2, p0, Lcfe;->ah:Lcfp;

    .line 132
    invoke-virtual {v0, v1, v2}, Lch;->a(ILba;)V

    .line 133
    invoke-virtual {v0}, Lch;->a()V

    iget-object v0, p0, Lcfe;->ah:Lcfp;

    new-instance v1, Lcfc;

    .line 134
    invoke-direct {v1, p0}, Lcfc;-><init>(Lcfe;)V

    iget-object v0, v0, Lcfp;->ad:Ljava/util/LinkedHashSet;

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-boolean v0, p0, Lcfe;->am:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const v0, 0x7f0d0076

    goto :goto_0

    .line 45
    :cond_0
    const v0, 0x7f0d0077

    .line 36
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v0, p0, Lcfe;->am:Z

    const v2, 0x7f0a00eb

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    invoke-static {p2}, Lcfe;->c(Landroid/content/Context;)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 60
    :cond_1
    const v0, 0x7f0a00ec

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    invoke-static {p2}, Lcfe;->c(Landroid/content/Context;)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {p0}, Lba;->q()Landroid/content/Context;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070160

    .line 47
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070161

    .line 48
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f07015f

    .line 49
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f070150

    .line 50
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 51
    sget v4, Lcfk;->a:I

    const v6, 0x7f07014b

    .line 52
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int v4, v4, v6

    sget v6, Lcfk;->a:I

    add-int/2addr v6, v5

    const v5, 0x7f07015e

    .line 53
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    mul-int v6, v6, v5

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    const v4, 0x7f070148

    .line 54
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 40
    :goto_1
    const v0, 0x7f0a00f6

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcfe;->ao:Landroid/widget/TextView;

    .line 56
    invoke-static {v0, v1}, Lge;->c(Landroid/view/View;I)V

    const v0, 0x7f0a00f8

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v0, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    const v0, 0x7f0a00fc

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcfe;->al:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 75
    :cond_2
    iget v2, p0, Lcfe;->ak:I

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 59
    :goto_2
    iget-object v0, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    .line 61
    const-string v2, "TOGGLE_BUTTON_TAG"

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    .line 62
    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v3, v1, [I

    const v4, 0x10100a0

    const/4 v5, 0x0

    aput v4, v3, v5

    const v4, 0x7f080234

    .line 63
    invoke-static {p2, v4}, Lji;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 64
    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v5, [I

    const v4, 0x7f080236

    .line 65
    invoke-static {p2, v4}, Lji;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 66
    invoke-virtual {v2, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {v0, v2}, Lms;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    iget v0, p0, Lcfe;->an:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 75
    :cond_3
    const/4 v0, 0x0

    .line 68
    :goto_3
    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p2, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v0, 0x0

    .line 69
    invoke-static {p2, v0}, Lge;->a(Landroid/view/View;Lfl;)V

    iget-object p2, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    .line 70
    invoke-virtual {p0, p2}, Lcfe;->a(Lcom/google/android/material/internal/CheckableImageButton;)V

    iget-object p2, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v0, Lcfd;

    .line 71
    invoke-direct {v0, p0}, Lcfd;-><init>(Lcfe;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0068

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcfe;->ad:Landroid/widget/Button;

    iget-object p2, p0, Lcfe;->ab:Lcek;

    .line 73
    invoke-interface {p2}, Lcek;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcfe;->ad:Landroid/widget/Button;

    .line 74
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 80
    :cond_4
    iget-object p2, p0, Lcfe;->ad:Landroid/widget/Button;

    .line 75
    invoke-virtual {p2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    :goto_4
    iget-object p2, p0, Lcfe;->ad:Landroid/widget/Button;

    .line 76
    const-string v0, "CONFIRM_BUTTON_TAG"

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcfe;->ad:Landroid/widget/Button;

    new-instance v0, Lcfa;

    .line 77
    invoke-direct {v0, p0}, Lcfa;-><init>(Lcfe;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a005a

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 79
    const-string v0, "CANCEL_BUTTON_TAG"

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcfb;

    .line 80
    invoke-direct {v0, p0}, Lcfb;-><init>(Lcfe;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lav;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    .line 20
    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcfe;->ag:I

    .line 21
    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcek;

    iput-object v0, p0, Lcfe;->ab:Lcek;

    .line 22
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lceh;

    iput-object v0, p0, Lcfe;->ai:Lceh;

    .line 23
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcfe;->ak:I

    .line 24
    const-string v0, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcfe;->al:Ljava/lang/CharSequence;

    .line 25
    const-string v0, "INPUT_MODE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcfe;->an:I

    return-void
.end method

.method public final a(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1

    iget-object v0, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableImageButton;->a:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11012f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110131

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 140
    :goto_0
    iget-object v0, p0, Lcfe;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    .line 142
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 8

    .line 86
    invoke-super {p0, p1}, Lav;->c(Landroid/os/Bundle;)V

    iget v0, p0, Lcfe;->ag:I

    .line 87
    const-string v1, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcfe;->ab:Lcek;

    .line 88
    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    new-instance v0, Lcef;

    iget-object v1, p0, Lcfe;->ai:Lceh;

    invoke-direct {v0, v1}, Lcef;-><init>(Lceh;)V

    iget-object v1, p0, Lcfe;->aj:Lcey;

    iget-object v1, v1, Lcey;->c:Lcfj;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lcfj;->g:J

    .line 90
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcef;->e:Ljava/lang/Long;

    :cond_0
    iget-object v1, v0, Lcef;->e:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 91
    invoke-static {}, Lcfj;->a()Lcfj;

    move-result-object v1

    iget-wide v1, v1, Lcfj;->g:J

    iget-wide v3, v0, Lcef;->c:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    iget-wide v5, v0, Lcef;->d:J

    cmp-long v7, v1, v5

    if-gtz v7, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    nop

    .line 92
    move-wide v1, v3

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcef;->e:Ljava/lang/Long;

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .line 93
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lcef;->f:Lceg;

    .line 94
    const-string v3, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Lceh;

    iget-wide v4, v0, Lcef;->c:J

    .line 95
    invoke-static {v4, v5}, Lcfj;->a(J)Lcfj;

    move-result-object v4

    iget-wide v5, v0, Lcef;->d:J

    .line 96
    invoke-static {v5, v6}, Lcfj;->a(J)Lcfj;

    move-result-object v5

    iget-object v0, v0, Lcef;->e:Ljava/lang/Long;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcfj;->a(J)Lcfj;

    move-result-object v0

    .line 98
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lceg;

    .line 99
    invoke-direct {v2, v4, v5, v0, v1}, Lceh;-><init>(Lcfj;Lcfj;Lcfj;Lceg;)V

    .line 100
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v0, p0, Lcfe;->ak:I

    .line 101
    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcfe;->al:Ljava/lang/CharSequence;

    .line 102
    const-string v1, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h()V
    .locals 9

    .line 103
    invoke-super {p0}, Lav;->h()V

    .line 104
    invoke-virtual {p0}, Lav;->e()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcfe;->am:Z

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lcfe;->ap:Lchl;

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 113
    :cond_0
    nop

    .line 107
    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 108
    invoke-virtual {p0}, Lba;->s()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    new-instance v1, Landroid/graphics/Rect;

    .line 109
    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lcfe;->ap:Lchl;

    move-object v3, v2

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcfx;

    .line 112
    invoke-virtual {p0}, Lav;->e()Landroid/app/Dialog;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcfx;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcfe;->P()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcfe;->ah:Lcfp;

    iget-object v0, v0, Lcfp;->ad:Ljava/util/LinkedHashSet;

    .line 114
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 115
    invoke-super {p0}, Lav;->i()V

    return-void
.end method

.method public final k()Landroid/app/Dialog;
    .locals 7

    new-instance v0, Landroid/app/Dialog;

    .line 26
    invoke-virtual {p0}, Lba;->q()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lba;->q()Landroid/content/Context;

    invoke-direct {p0}, Lcfe;->Q()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lcfe;->b(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcfe;->am:Z

    const-class v2, Lcfe;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 30
    const v3, 0x7f0400c8

    invoke-static {v1, v3, v2}, Lcsb;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    .line 31
    new-instance v3, Lchl;

    .line 32
    const/4 v4, 0x0

    const v5, 0x7f0401cd

    const v6, 0x7f120408

    invoke-static {v1, v4, v5, v6}, Lchq;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lchp;

    move-result-object v4

    invoke-virtual {v4}, Lchp;->a()Lchq;

    move-result-object v4

    invoke-direct {v3, v4}, Lchl;-><init>(Lchq;)V

    iput-object v3, p0, Lcfe;->ap:Lchl;

    .line 33
    invoke-virtual {v3, v1}, Lchl;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcfe;->ap:Lchl;

    .line 34
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lchl;->a(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcfe;->ap:Lchl;

    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lge;->n(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v1, v2}, Lchl;->c(F)V

    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcfe;->ae:Ljava/util/LinkedHashSet;

    .line 17
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcfe;->af:Ljava/util/LinkedHashSet;

    .line 81
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 82
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lba;->L:Landroid/view/View;

    .line 83
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 85
    :cond_1
    invoke-super {p0, p1}, Lav;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
