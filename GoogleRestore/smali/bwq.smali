.class public Lbwq;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4

    .line 5
    invoke-static {p0}, Lclv;->a(Landroid/content/Context;)Lclv;

    move-result-object v0

    sget-object v1, Lclu;->D:Lclu;

    invoke-virtual {v0, p0, v1}, Lclv;->c(Landroid/content/Context;Lclu;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x514d33ab

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x68ac462

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v3, :cond_4

    return v0

    :cond_4
    const p0, 0x800003

    return p0

    :cond_5
    const/16 p0, 0x11

    return p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;IILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;
    .locals 14

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move/from16 v4, p2

    move v6, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    move-object v9, p0

    move v10, p1

    move/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 3
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/widget/FrameLayout;)Z
    .locals 2

    .line 7
    instance-of v0, p0, Lcom/google/android/setupdesign/GlifLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    iget-boolean p0, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
