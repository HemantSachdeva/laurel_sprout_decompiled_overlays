.class public final Luz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lva;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field static final d:Luz;

.field static final e:Luz;


# instance fields
.field public final f:Z

.field public final g:Lva;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lvh;->c:Lva;

    sput-object v0, Luz;->a:Lva;

    .line 2
    const/16 v1, 0x200e

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Luz;->b:Ljava/lang/String;

    .line 3
    const/16 v1, 0x200f

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Luz;->c:Ljava/lang/String;

    new-instance v1, Luz;

    .line 4
    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Luz;-><init>(ZLva;)V

    sput-object v1, Luz;->d:Luz;

    new-instance v1, Luz;

    .line 5
    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Luz;-><init>(ZLva;)V

    sput-object v1, Luz;->e:Luz;

    return-void
.end method

.method public constructor <init>(ZLva;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Luz;->f:Z

    iput-object p2, p0, Luz;->g:Lva;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .locals 7

    .line 14
    new-instance v0, Luy;

    invoke-direct {v0, p0}, Luy;-><init>(Ljava/lang/CharSequence;)V

    iget p0, v0, Luy;->b:I

    iput p0, v0, Luy;->c:I

    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget v3, v0, Luy;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_6

    .line 15
    invoke-virtual {v0}, Luy;->a()B

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/16 v6, 0x9

    if-eq v3, v6, :cond_0

    packed-switch v3, :pswitch_data_0

    if-nez v2, :cond_0

    :goto_1
    goto :goto_4

    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    if-ne v2, v1, :cond_1

    goto :goto_2

    :pswitch_2
    if-ne v2, v1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    :goto_2
    const/4 p0, 0x1

    goto :goto_5

    :cond_3
    if-nez v2, :cond_0

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    :goto_3
    const/4 p0, -0x1

    goto :goto_5

    :cond_5
    if-nez v2, :cond_0

    goto :goto_1

    .line 14
    :goto_4
    move v2, v1

    goto :goto_0

    .line 15
    :cond_6
    nop

    :goto_5
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Luz;
    .locals 3

    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lvi;->a(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    sget-object v0, Luz;->a:Lva;

    if-ne v0, v0, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, Luz;->e:Luz;

    goto :goto_1

    :cond_1
    sget-object v0, Luz;->d:Luz;

    goto :goto_1

    :cond_2
    new-instance v2, Luz;

    .line 18
    invoke-direct {v2, v1, v0}, Luz;-><init>(ZLva;)V

    move-object v0, v2

    .line 17
    :goto_1
    return-object v0
.end method

.method public static b(Ljava/lang/CharSequence;)I
    .locals 9

    .line 6
    new-instance v0, Luy;

    invoke-direct {v0, p0}, Luy;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    iput p0, v0, Luy;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    iget v6, v0, Luy;->c:I

    iget v7, v0, Luy;->b:I

    if-ge v6, v7, :cond_5

    if-nez v3, :cond_5

    iget-object v7, v0, Luy;->a:Ljava/lang/CharSequence;

    .line 7
    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iput-char v6, v0, Luy;->d:C

    .line 8
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Luy;->a:Ljava/lang/CharSequence;

    iget v7, v0, Luy;->c:I

    .line 9
    invoke-static {v6, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    iget v7, v0, Luy;->c:I

    .line 10
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Luy;->c:I

    .line 11
    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    goto :goto_1

    :cond_1
    iget v6, v0, Luy;->c:I

    add-int/2addr v6, v2

    iput v6, v0, Luy;->c:I

    iget-char v6, v0, Luy;->d:C

    .line 12
    invoke-static {v6}, Luy;->a(C)B

    move-result v6

    .line 11
    :goto_1
    if-eqz v6, :cond_4

    if-eq v6, v2, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/16 v7, 0x9

    if-eq v6, v7, :cond_0

    packed-switch v6, :pswitch_data_0

    :cond_2
    goto :goto_2

    :pswitch_0
    add-int/lit8 v5, v5, -0x1

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :pswitch_2
    add-int/lit8 v5, v5, 0x1

    const/4 v4, -0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_2

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    if-nez v5, :cond_2

    const/4 p0, -0x1

    goto :goto_4

    .line 6
    :goto_2
    move v3, v5

    goto :goto_0

    .line 12
    :cond_5
    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    move p0, v4

    goto :goto_4

    :cond_7
    :goto_3
    iget v4, v0, Luy;->c:I

    if-lez v4, :cond_9

    .line 13
    invoke-virtual {v0}, Luy;->a()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_3

    :pswitch_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :pswitch_4
    if-ne v3, v5, :cond_8

    const/4 p0, 0x1

    goto :goto_4

    :pswitch_5
    if-ne v3, v5, :cond_8

    const/4 p0, -0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_9
    nop

    .line 11
    :goto_4
    return p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
