.class public final Lcha;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F

.field public j:Landroid/graphics/Typeface;

.field private final k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcha;->l:Z

    .line 1
    sget-object v1, Lcgy;->a:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcha;->i:F

    .line 3
    const/4 v2, 0x3

    invoke-static {p1, p2, v2}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcha;->a:Landroid/content/res/ColorStateList;

    .line 4
    const/4 v2, 0x4

    invoke-static {p1, p2, v2}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 5
    const/4 v2, 0x5

    invoke-static {p1, p2, v2}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 6
    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcha;->d:I

    .line 7
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcha;->e:I

    .line 8
    const/16 v3, 0xc

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eq v2, v4, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    .line 16
    :cond_0
    nop

    .line 8
    :goto_0
    nop

    .line 9
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcha;->k:I

    .line 10
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcha;->c:Ljava/lang/String;

    const/16 v2, 0xe

    .line 11
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 v0, 0x6

    .line 12
    invoke-static {p1, p2, v0}, Lcsy;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcha;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x7

    .line 13
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcha;->f:F

    const/16 p1, 0x8

    .line 14
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcha;->g:F

    const/16 p1, 0x9

    .line 15
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcha;->h:F

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcha;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcha;->l:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcha;->j:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcha;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcha;->d:I

    .line 17
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcha;->j:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcha;->j:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    iget v0, p0, Lcha;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 21
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcha;->j:Landroid/graphics/Typeface;

    goto :goto_0

    .line 18
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcha;->j:Landroid/graphics/Typeface;

    goto :goto_0

    .line 19
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcha;->j:Landroid/graphics/Typeface;

    goto :goto_0

    .line 20
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcha;->j:Landroid/graphics/Typeface;

    .line 21
    :goto_0
    iget-object v0, p0, Lcha;->j:Landroid/graphics/Typeface;

    iget v1, p0, Lcha;->d:I

    .line 22
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcha;->j:Landroid/graphics/Typeface;

    return-void

    .line 20
    :cond_4
    return-void
.end method

.method public final a(Landroid/content/Context;Lchb;)V
    .locals 8

    .line 23
    invoke-virtual {p0}, Lcha;->a()V

    iget v0, p0, Lcha;->k:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcha;->l:Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iget-boolean v0, p0, Lcha;->l:Z

    if-nez v0, :cond_3

    :try_start_0
    new-instance v6, Lcgz;

    .line 24
    invoke-direct {v6, p0, p2}, Lcgz;-><init>(Lcha;Lchb;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x4

    .line 26
    invoke-virtual {v6, p1}, Ldv;->a(I)V

    return-void

    :cond_1
    new-instance v4, Landroid/util/TypedValue;

    .line 27
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lec;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILdv;Z)Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 30
    :catch_0
    move-exception p1

    iget-object p1, p0, Lcha;->c:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error loading font "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/String;

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-boolean v1, p0, Lcha;->l:Z

    .line 29
    invoke-virtual {p2}, Lchb;->b()V

    return-void

    .line 31
    :catch_1
    move-exception p1

    iput-boolean v1, p0, Lcha;->l:Z

    .line 30
    invoke-virtual {p2}, Lchb;->b()V

    return-void

    .line 27
    :cond_3
    iget-object p1, p0, Lcha;->j:Landroid/graphics/Typeface;

    .line 31
    invoke-virtual {p2, p1}, Lchb;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
