.class public Ltt;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;J)Laqo;
    .locals 4

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    div-float/2addr p1, p2

    const v1, 0x7f11010f

    goto :goto_0

    .line 17
    :cond_0
    const v1, 0x7f110101

    .line 0
    :goto_0
    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    div-float/2addr p1, p2

    const v1, 0x7f1100e0

    goto :goto_1

    .line 17
    :cond_1
    nop

    .line 0
    :goto_1
    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    div-float/2addr p1, p2

    const v1, 0x7f1101a2

    goto :goto_2

    .line 17
    :cond_2
    nop

    .line 0
    :goto_2
    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    div-float/2addr p1, p2

    const v1, 0x7f11013e

    goto :goto_3

    .line 17
    :cond_3
    nop

    .line 0
    :goto_3
    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "%.0f"

    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    const-string v0, "%.2f"

    goto :goto_4

    .line 17
    :cond_4
    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_5

    const-string v0, "%.1f"

    goto :goto_4

    :cond_5
    const/high16 p2, 0x42c80000    # 100.0f

    cmpg-float p2, p1, p2

    .line 15
    :goto_4
    invoke-static {p0}, Ltt;->a(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {p2, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Laqo;

    .line 17
    invoke-direct {p2, p1, p0}, Laqo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_2

    .line 9
    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_0

    .line 10
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    :cond_0
    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_1

    .line 11
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 13
    :try_start_0
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    new-instance p1, Laqi;

    .line 14
    invoke-direct {p1, p0}, Laqi;-><init>(Ljava/lang/ClassCastException;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;)Ljava/util/Locale;
    .locals 1

    .line 18
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 1

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;I[II)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    aget p2, p6, p1

    add-int/2addr p2, p4

    aput p2, p6, p1

    .line 2
    const/4 p1, 0x1

    aget p2, p6, p1

    add-int/2addr p2, p5

    aput p2, p6, p1

    return-void
.end method

.method public a(Ltw;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/View;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 3
    sget-object p1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object p1
.end method
