.class final Lmp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[I

.field public final f:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lmp;->a:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lmp;->b:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lmp;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lmp;->d:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lmp;->e:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lmp;->f:[I

    return-void

    :array_0
    .array-data 4
        0x7f0801d0
        0x7f0801ce
        0x7f08017d
    .end array-data

    :array_1
    .array-data 4
        0x7f080195
        0x7f0801be
        0x7f08019c
        0x7f080197
        0x7f080198
        0x7f08019b
        0x7f08019a
    .end array-data

    :array_2
    .array-data 4
        0x7f0801cd
        0x7f0801cf
        0x7f08018e
        0x7f0801c6
        0x7f0801c7
        0x7f0801c9
        0x7f0801cb
        0x7f0801c8
        0x7f0801ca
        0x7f0801cc
    .end array-data

    :array_3
    .array-data 4
        0x7f0801b4
        0x7f08018c
        0x7f0801b3
    .end array-data

    :array_4
    .array-data 4
        0x7f0801c4
        0x7f0801d1
    .end array-data

    :array_5
    .array-data 4
        0x7f080180
        0x7f080186
        0x7f080181
        0x7f080187
    .end array-data
.end method

.method public static final a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    .line 2
    const v2, 0x7f0400a8

    invoke-static {p0, v2}, Lri;->a(Landroid/content/Context;I)I

    move-result v2

    .line 3
    const v3, 0x7f0400a6

    invoke-static {p0, v3}, Lri;->c(Landroid/content/Context;I)I

    move-result p0

    sget-object v3, Lri;->a:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p0, v0, v4

    sget-object p0, Lri;->c:[I

    const/4 v3, 0x1

    aput-object p0, v1, v3

    .line 4
    invoke-static {v2, p1}, Ldy;->a(II)I

    move-result p0

    aput p0, v0, v3

    sget-object p0, Lri;->b:[I

    const/4 v3, 0x2

    aput-object p0, v1, v3

    .line 5
    invoke-static {v2, p1}, Ldy;->a(II)I

    move-result p0

    aput p0, v0, v3

    sget-object p0, Lri;->e:[I

    const/4 v2, 0x3

    aput-object p0, v1, v2

    aput p1, v0, v2

    new-instance p0, Landroid/content/res/ColorStateList;

    .line 6
    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static final a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 7
    invoke-static {p0}, Loh;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 9
    sget-object p2, Lmq;->a:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Lmq;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static final a([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1
    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
