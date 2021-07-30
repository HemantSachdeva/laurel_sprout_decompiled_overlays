.class public final Led;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lel;

.field public static final b:Ltn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Leh;

    .line 2
    invoke-direct {v0}, Leh;-><init>()V

    sput-object v0, Led;->a:Lel;

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Leg;

    .line 4
    invoke-direct {v0}, Leg;-><init>()V

    sput-object v0, Led;->a:Lel;

    .line 2
    :goto_0
    new-instance v0, Ltn;

    const/16 v1, 0x10

    .line 5
    invoke-direct {v0, v1}, Ltn;-><init>(I)V

    sput-object v0, Led;->b:Ltn;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    sget-object v0, Led;->a:Lel;

    .line 16
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lel;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 17
    invoke-static {p1, p2, p4}, Led;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Led;->b:Ltn;

    .line 18
    invoke-virtual {p2, p1, p0}, Ltn;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 0

    if-eqz p0, :cond_0

    .line 7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ldo;Landroid/content/res/Resources;IILdv;Z)Landroid/graphics/Typeface;
    .locals 7

    .line 9
    instance-of v0, p1, Ldr;

    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Ldr;

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    iget v1, p1, Ldr;->c:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    .line 15
    :cond_0
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-eqz p6, :cond_1

    iget p6, p1, Ldr;->b:I

    move v5, p6

    goto :goto_1

    .line 15
    :cond_1
    const/4 p6, -0x1

    const/4 v5, -0x1

    .line 10
    :goto_1
    iget-object v2, p1, Ldr;->a:Luj;

    .line 11
    move-object v1, p0

    move-object v3, p5

    move v6, p4

    invoke-static/range {v1 .. v6}, Lur;->a(Landroid/content/Context;Luj;Ldv;ZII)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_2

    .line 15
    :cond_2
    sget-object p6, Led;->a:Lel;

    .line 12
    check-cast p1, Ldp;

    invoke-virtual {p6, p0, p1, p2, p4}, Lel;->a(Landroid/content/Context;Ldp;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p5, p0}, Ldv;->b(Landroid/graphics/Typeface;)V

    goto :goto_2

    :cond_3
    const/4 p1, -0x3

    .line 14
    invoke-virtual {p5, p1}, Ldv;->a(I)V

    .line 11
    :goto_2
    if-eqz p0, :cond_4

    sget-object p1, Led;->b:Ltn;

    .line 15
    invoke-static {p2, p3, p4}, Led;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ltn;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
