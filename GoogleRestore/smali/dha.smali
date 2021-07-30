.class public final Ldha;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:[C

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:[Ljava/lang/String;

.field public i:[I

.field private final j:Ljava/io/Reader;

.field private k:I

.field private l:I

.field private m:I

.field private n:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ldha;->a:[C

    const/4 v0, 0x0

    iput v0, p0, Ldha;->b:I

    iput v0, p0, Ldha;->k:I

    iput v0, p0, Ldha;->l:I

    iput v0, p0, Ldha;->m:I

    iput v0, p0, Ldha;->c:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Ldha;->n:[I

    const/4 v3, 0x1

    iput v3, p0, Ldha;->g:I

    .line 2
    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ldha;->h:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Ldha;->i:[I

    iput-object p1, p0, Ldha;->j:Ljava/io/Reader;

    return-void
.end method

.method private final a(Z)I
    .locals 8

    iget-object v0, p0, Ldha;->a:[C

    iget v1, p0, Ldha;->b:I

    iget v2, p0, Ldha;->k:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iput v1, p0, Ldha;->b:I

    .line 60
    invoke-direct {p0, v3}, Ldha;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 71
    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Ldha;->b:I

    iget v2, p0, Ldha;->k:I

    goto :goto_1

    .line 72
    :cond_2
    nop

    .line 71
    :goto_1
    add-int/lit8 v4, v1, 0x1

    .line 61
    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    iget v1, p0, Ldha;->l:I

    add-int/2addr v1, v3

    iput v1, p0, Ldha;->l:I

    iput v4, p0, Ldha;->m:I

    goto/16 :goto_7

    :cond_3
    const/16 v6, 0x20

    if-eq v1, v6, :cond_10

    const/16 v6, 0xd

    if-eq v1, v6, :cond_10

    const/16 v6, 0x9

    if-ne v1, v6, :cond_4

    goto/16 :goto_7

    :cond_4
    const/16 v6, 0x2f

    if-ne v1, v6, :cond_e

    iput v4, p0, Ldha;->b:I

    const/4 v1, 0x2

    if-ne v4, v2, :cond_6

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ldha;->b:I

    .line 62
    invoke-direct {p0, v1}, Ldha;->b(I)Z

    move-result v2

    iget v4, p0, Ldha;->b:I

    add-int/2addr v4, v3

    iput v4, p0, Ldha;->b:I

    if-eqz v2, :cond_5

    goto :goto_2

    .line 68
    :cond_5
    return v6

    .line 63
    :cond_6
    :goto_2
    invoke-direct {p0}, Ldha;->g()V

    iget v2, p0, Ldha;->b:I

    .line 64
    aget-char v4, v0, v2

    const/16 v7, 0x2a

    if-eq v4, v7, :cond_8

    if-eq v4, v6, :cond_7

    .line 68
    return v6

    .line 64
    :cond_7
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ldha;->b:I

    .line 65
    invoke-direct {p0}, Ldha;->h()V

    iget v1, p0, Ldha;->b:I

    iget v2, p0, Ldha;->k:I

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ldha;->b:I

    :goto_3
    iget v2, p0, Ldha;->b:I

    add-int/2addr v2, v1

    iget v4, p0, Ldha;->k:I

    if-le v2, v4, :cond_a

    .line 66
    invoke-direct {p0, v1}, Ldha;->b(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    .line 70
    :cond_9
    nop

    .line 72
    const-string p1, "Unterminated comment"

    invoke-direct {p0, p1}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 66
    :cond_a
    :goto_4
    iget-object v2, p0, Ldha;->a:[C

    iget v4, p0, Ldha;->b:I

    .line 67
    aget-char v2, v2, v4

    if-ne v2, v5, :cond_b

    iget v2, p0, Ldha;->l:I

    add-int/2addr v2, v3

    iput v2, p0, Ldha;->l:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ldha;->m:I

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_d

    iget-object v4, p0, Ldha;->a:[C

    iget v6, p0, Ldha;->b:I

    add-int/2addr v6, v2

    .line 68
    aget-char v4, v4, v6

    const-string v6, "*/"

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 67
    :cond_c
    :goto_6
    iget v2, p0, Ldha;->b:I

    add-int/2addr v2, v3

    iput v2, p0, Ldha;->b:I

    goto :goto_3

    .line 68
    :cond_d
    iget v2, p0, Ldha;->b:I

    add-int/2addr v1, v2

    iget v2, p0, Ldha;->k:I

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x23

    if-ne v1, v2, :cond_f

    iput v4, p0, Ldha;->b:I

    .line 69
    invoke-direct {p0}, Ldha;->g()V

    .line 70
    invoke-direct {p0}, Ldha;->h()V

    iget v1, p0, Ldha;->b:I

    iget v2, p0, Ldha;->k:I

    goto/16 :goto_0

    :cond_f
    iput v4, p0, Ldha;->b:I

    return v1

    :cond_10
    nop

    .line 0
    :goto_7
    move v1, v4

    goto/16 :goto_0
.end method

.method private final a(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ldhb;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ldhb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final b(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 58
    const/4 p1, 0x1

    return p1

    :cond_0
    :pswitch_0
    invoke-direct {p0}, Ldha;->g()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final b(I)Z
    .locals 6

    iget-object v0, p0, Ldha;->a:[C

    iget v1, p0, Ldha;->m:I

    iget v2, p0, Ldha;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Ldha;->m:I

    iget v1, p0, Ldha;->k:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Ldha;->k:I

    .line 47
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 49
    :cond_0
    iput v3, p0, Ldha;->k:I

    .line 47
    :goto_0
    iput v3, p0, Ldha;->b:I

    :cond_1
    iget-object v1, p0, Ldha;->j:Ljava/io/Reader;

    iget v2, p0, Ldha;->k:I

    array-length v4, v0

    sub-int/2addr v4, v2

    .line 48
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v2, p0, Ldha;->k:I

    add-int/2addr v2, v1

    iput v2, p0, Ldha;->k:I

    iget v1, p0, Ldha;->l:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Ldha;->m:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    .line 49
    aget-char v1, v0, v3

    const v5, 0xfeff

    if-ne v1, v5, :cond_2

    iget v1, p0, Ldha;->b:I

    add-int/2addr v1, v4

    iput v1, p0, Ldha;->b:I

    iput v4, p0, Ldha;->m:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method private final g()V
    .locals 1

    .line 3
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private final h()V
    .locals 4

    :cond_0
    iget v0, p0, Ldha;->b:I

    iget v1, p0, Ldha;->k:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 108
    invoke-direct {p0, v2}, Ldha;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Ldha;->a:[C

    iget v1, p0, Ldha;->b:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ldha;->b:I

    .line 109
    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Ldha;->l:I

    add-int/2addr v0, v2

    iput v0, p0, Ldha;->l:I

    iput v3, p0, Ldha;->m:I

    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(C)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Ldha;->a:[C

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ldha;->b:I

    iget v3, p0, Ldha;->k:I

    move v4, v3

    move v3, v2

    :goto_1
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v4, :cond_15

    add-int/lit8 v7, v2, 0x1

    .line 73
    aget-char v2, v0, v2

    if-ne v2, p1, :cond_1

    iput v7, p0, Ldha;->b:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/String;

    .line 84
    invoke-direct {p1, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 85
    :cond_0
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v8, 0x5c

    const/16 v9, 0xa

    if-ne v2, v8, :cond_13

    iput v7, p0, Ldha;->b:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-nez v1, :cond_2

    add-int/lit8 v1, v7, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v1, v1

    .line 74
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 75
    :cond_2
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Ldha;->b:I

    iget v3, p0, Ldha;->k:I

    const-string v4, "Unterminated escape sequence"

    if-ne v2, v3, :cond_4

    .line 76
    invoke-direct {p0, v6}, Ldha;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 91
    :cond_3
    nop

    .line 90
    invoke-direct {p0, v4}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 76
    :cond_4
    :goto_2
    iget-object v2, p0, Ldha;->a:[C

    iget v3, p0, Ldha;->b:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Ldha;->b:I

    .line 77
    aget-char v2, v2, v3

    if-eq v2, v9, :cond_11

    const/16 v3, 0x22

    if-eq v2, v3, :cond_12

    const/16 v3, 0x27

    if-eq v2, v3, :cond_12

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_12

    if-eq v2, v8, :cond_12

    const/16 v3, 0x62

    if-eq v2, v3, :cond_10

    const/16 v3, 0x66

    if-eq v2, v3, :cond_f

    const/16 v6, 0x6e

    if-eq v2, v6, :cond_e

    const/16 v6, 0x72

    if-eq v2, v6, :cond_d

    const/16 v6, 0x74

    if-eq v2, v6, :cond_c

    const/16 v6, 0x75

    if-ne v2, v6, :cond_b

    .line 80
    add-int/lit8 v5, v5, 0x4

    iget v2, p0, Ldha;->k:I

    const/4 v6, 0x4

    if-le v5, v2, :cond_6

    .line 78
    invoke-direct {p0, v6}, Ldha;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 89
    :cond_5
    nop

    .line 88
    invoke-direct {p0, v4}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 78
    :cond_6
    :goto_3
    iget v2, p0, Ldha;->b:I

    add-int/lit8 v4, v2, 0x4

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v2, v4, :cond_a

    iget-object v5, p0, Ldha;->a:[C

    .line 79
    aget-char v5, v5, v2

    shl-int/lit8 v7, v9, 0x4

    int-to-char v7, v7

    const/16 v8, 0x30

    if-lt v5, v8, :cond_7

    const/16 v8, 0x39

    if-gt v5, v8, :cond_7

    add-int/lit8 v5, v5, -0x30

    :goto_5
    add-int/2addr v7, v5

    int-to-char v5, v7

    move v9, v5

    goto :goto_6

    :cond_7
    const/16 v8, 0x61

    if-lt v5, v8, :cond_8

    if-gt v5, v3, :cond_8

    add-int/lit8 v5, v5, -0x57

    goto :goto_5

    :cond_8
    const/16 v8, 0x41

    if-lt v5, v8, :cond_9

    const/16 v8, 0x46

    if-gt v5, v8, :cond_9

    add-int/lit8 v5, v5, -0x37

    goto :goto_5

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 88
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ldha;->a:[C

    iget v3, p0, Ldha;->b:I

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_a
    iget v2, p0, Ldha;->b:I

    add-int/2addr v2, v6

    iput v2, p0, Ldha;->b:I

    goto :goto_7

    .line 90
    :cond_b
    nop

    .line 89
    const-string p1, "Invalid escape sequence"

    invoke-direct {p0, p1}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 80
    :cond_c
    const/16 v9, 0x9

    goto :goto_7

    .line 79
    :cond_d
    const/16 v9, 0xd

    goto :goto_7

    :cond_e
    goto :goto_7

    :cond_f
    const/16 v9, 0xc

    goto :goto_7

    :cond_10
    const/16 v9, 0x8

    goto :goto_7

    :cond_11
    iget v3, p0, Ldha;->l:I

    add-int/2addr v3, v6

    iput v3, p0, Ldha;->l:I

    iput v5, p0, Ldha;->m:I

    .line 80
    :cond_12
    move v9, v2

    :goto_7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Ldha;->b:I

    iget v3, p0, Ldha;->k:I

    move v4, v3

    move v3, v2

    goto/16 :goto_1

    .line 79
    :cond_13
    if-ne v2, v9, :cond_14

    iget v2, p0, Ldha;->l:I

    add-int/2addr v2, v6

    iput v2, p0, Ldha;->l:I

    iput v7, p0, Ldha;->m:I

    .line 80
    :cond_14
    move v2, v7

    goto/16 :goto_1

    .line 79
    :cond_15
    if-nez v1, :cond_16

    sub-int v1, v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v1, v1

    .line 81
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    :cond_16
    sub-int v4, v2, v3

    .line 82
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v2, p0, Ldha;->b:I

    .line 83
    invoke-direct {p0, v6}, Ldha;->b(I)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_0

    .line 91
    :cond_17
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public final a(I)V
    .locals 6

    iget v0, p0, Ldha;->g:I

    iget-object v1, p0, Ldha;->n:[I

    .line 100
    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int v2, v0, v0

    .line 101
    new-array v3, v2, [I

    .line 102
    new-array v4, v2, [I

    .line 103
    new-array v2, v2, [Ljava/lang/String;

    .line 104
    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ldha;->i:[I

    iget v1, p0, Ldha;->g:I

    .line 105
    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ldha;->h:[Ljava/lang/String;

    iget v1, p0, Ldha;->g:I

    .line 106
    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Ldha;->n:[I

    iput-object v4, p0, Ldha;->i:[I

    iput-object v2, p0, Ldha;->h:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ldha;->n:[I

    iget v1, p0, Ldha;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldha;->g:I

    .line 107
    aput p1, v0, v1

    return-void
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Ldha;->c:I

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Ldha;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Ldha;->n:[I

    iget v2, v0, Ldha;->g:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    .line 6
    aget v4, v1, v2

    const/16 v7, 0x5d

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x7

    const/4 v14, 0x4

    const/4 v15, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_0

    .line 7
    aput v5, v1, v2

    goto/16 :goto_0

    .line 32
    :cond_0
    if-ne v4, v5, :cond_3

    .line 8
    invoke-direct {v0, v8}, Ldha;->a(Z)I

    move-result v1

    if-eq v1, v10, :cond_b

    if-eq v1, v9, :cond_2

    if-ne v1, v7, :cond_1

    .line 9
    iput v14, v0, Ldha;->c:I

    return v14

    .line 31
    :cond_1
    nop

    .line 10
    const-string v1, "Unterminated array"

    invoke-direct {v0, v1}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 9
    :cond_2
    invoke-direct/range {p0 .. p0}, Ldha;->g()V

    goto :goto_0

    :cond_3
    if-eq v4, v12, :cond_41

    if-ne v4, v15, :cond_4

    goto/16 :goto_1c

    .line 16
    :cond_4
    if-ne v4, v14, :cond_7

    .line 21
    aput v15, v1, v2

    .line 22
    invoke-direct {v0, v8}, Ldha;->a(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_b

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_6

    .line 23
    invoke-direct/range {p0 .. p0}, Ldha;->g()V

    iget v1, v0, Ldha;->b:I

    iget v2, v0, Ldha;->k:I

    if-lt v1, v2, :cond_5

    .line 24
    invoke-direct {v0, v8}, Ldha;->b(I)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_5
    iget-object v1, v0, Ldha;->a:[C

    iget v2, v0, Ldha;->b:I

    aget-char v1, v1, v2

    const/16 v14, 0x3e

    if-ne v1, v14, :cond_b

    add-int/2addr v2, v8

    iput v2, v0, Ldha;->b:I

    goto :goto_0

    .line 28
    :cond_6
    nop

    .line 25
    const-string v1, "Expected \':\'"

    invoke-direct {v0, v1}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 24
    :cond_7
    if-ne v4, v11, :cond_8

    .line 26
    aput v13, v1, v2

    goto :goto_0

    :cond_8
    if-ne v4, v13, :cond_a

    .line 27
    invoke-direct {v0, v6}, Ldha;->a(Z)I

    move-result v1

    if-ne v1, v3, :cond_9

    const/16 v1, 0x11

    iput v1, v0, Ldha;->c:I

    return v1

    .line 28
    :cond_9
    invoke-direct/range {p0 .. p0}, Ldha;->g()V

    iget v1, v0, Ldha;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Ldha;->b:I

    goto :goto_0

    .line 15
    :cond_a
    const/16 v1, 0x8

    if-eq v4, v1, :cond_40

    .line 7
    :cond_b
    :goto_0
    nop

    .line 29
    invoke-direct {v0, v8}, Ldha;->a(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3f

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3e

    if-eq v1, v10, :cond_3b

    if-eq v1, v9, :cond_3b

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_3a

    if-eq v1, v7, :cond_38

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_37

    iget v1, v0, Ldha;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Ldha;->b:I

    iget-object v2, v0, Ldha;->a:[C

    .line 33
    aget-char v1, v2, v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_10

    const/16 v2, 0x54

    if-ne v1, v2, :cond_c

    goto :goto_2

    .line 39
    :cond_c
    const/16 v2, 0x66

    if-eq v1, v2, :cond_f

    const/16 v2, 0x46

    if-ne v1, v2, :cond_d

    goto :goto_1

    :cond_d
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_e

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_15

    :cond_e
    const-string v1, "null"

    const-string v2, "NULL"

    const/4 v3, 0x7

    goto :goto_3

    :cond_f
    :goto_1
    const-string v1, "false"

    const-string v2, "FALSE"

    const/4 v3, 0x6

    goto :goto_3

    .line 33
    :cond_10
    :goto_2
    const-string v1, "true"

    const-string v2, "TRUE"

    const/4 v3, 0x5

    .line 34
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x1

    :goto_4
    if-ge v7, v4, :cond_13

    iget v9, v0, Ldha;->b:I

    add-int/2addr v9, v7

    iget v10, v0, Ldha;->k:I

    if-lt v9, v10, :cond_11

    add-int/lit8 v9, v7, 0x1

    .line 35
    invoke-direct {v0, v9}, Ldha;->b(I)Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v3, 0x0

    goto :goto_5

    .line 42
    :cond_11
    iget-object v9, v0, Ldha;->a:[C

    iget v10, v0, Ldha;->b:I

    add-int/2addr v10, v7

    .line 36
    aget-char v9, v9, v10

    .line 37
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_12

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_12

    const/4 v3, 0x0

    goto :goto_5

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_13
    iget v1, v0, Ldha;->b:I

    add-int/2addr v1, v4

    iget v2, v0, Ldha;->k:I

    if-lt v1, v2, :cond_14

    add-int/lit8 v1, v4, 0x1

    .line 38
    invoke-direct {v0, v1}, Ldha;->b(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    iget-object v1, v0, Ldha;->a:[C

    iget v2, v0, Ldha;->b:I

    add-int/2addr v2, v4

    aget-char v1, v1, v2

    .line 39
    invoke-direct {v0, v1}, Ldha;->b(C)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    const/4 v3, 0x0

    goto :goto_5

    :cond_16
    iget v1, v0, Ldha;->b:I

    add-int/2addr v1, v4

    iput v1, v0, Ldha;->b:I

    iput v3, v0, Ldha;->c:I

    .line 35
    :goto_5
    if-nez v3, :cond_36

    iget-object v1, v0, Ldha;->a:[C

    iget v2, v0, Ldha;->b:I

    iget v3, v0, Ldha;->k:I

    const-wide/16 v9, 0x0

    move-wide v13, v9

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_6
    add-int v6, v2, v7

    if-ne v6, v3, :cond_19

    array-length v2, v1

    if-ne v7, v2, :cond_17

    const/4 v6, 0x0

    goto/16 :goto_17

    .line 45
    :cond_17
    add-int/lit8 v2, v7, 0x1

    .line 40
    invoke-direct {v0, v2}, Ldha;->b(I)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_f

    :cond_18
    iget v2, v0, Ldha;->b:I

    iget v3, v0, Ldha;->k:I

    goto :goto_7

    .line 42
    :cond_19
    nop

    .line 40
    :goto_7
    add-int v6, v2, v7

    .line 41
    aget-char v6, v1, v6

    const/16 v11, 0x2b

    if-eq v6, v11, :cond_32

    const/16 v11, 0x45

    if-eq v6, v11, :cond_30

    const/16 v11, 0x65

    if-eq v6, v11, :cond_30

    const/16 v11, 0x2d

    if-eq v6, v11, :cond_2e

    const/16 v11, 0x2e

    if-eq v6, v11, :cond_2d

    const/16 v11, 0x30

    if-lt v6, v11, :cond_24

    const/16 v11, 0x39

    if-le v6, v11, :cond_1a

    goto :goto_e

    .line 42
    :cond_1a
    if-eq v4, v8, :cond_22

    if-nez v4, :cond_1b

    const/4 v8, 0x6

    goto :goto_c

    :cond_1b
    if-ne v4, v5, :cond_1f

    cmp-long v11, v13, v9

    if-nez v11, :cond_1c

    goto/16 :goto_16

    :cond_1c
    const-wide/16 v18, 0xa

    mul-long v18, v18, v13

    add-int/lit8 v6, v6, -0x30

    int-to-long v8, v6

    sub-long v18, v18, v8

    const-wide v8, -0xcccccccccccccccL

    cmp-long v6, v13, v8

    if-gtz v6, :cond_1e

    const-wide v8, -0xcccccccccccccccL

    cmp-long v6, v13, v8

    if-nez v6, :cond_1d

    cmp-long v6, v18, v13

    if-gez v6, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v6, 0x0

    goto :goto_9

    :cond_1e
    :goto_8
    const/4 v6, 0x1

    :goto_9
    and-int v16, v16, v6

    move-wide/from16 v13, v18

    goto :goto_a

    :cond_1f
    if-ne v4, v12, :cond_20

    const/4 v4, 0x4

    :goto_a
    const/4 v8, 0x6

    goto :goto_d

    :cond_20
    if-eq v4, v15, :cond_21

    const/4 v8, 0x6

    if-ne v4, v8, :cond_23

    goto :goto_b

    :cond_21
    const/4 v8, 0x6

    :goto_b
    const/4 v4, 0x7

    goto :goto_d

    :cond_22
    const/4 v8, 0x6

    :goto_c
    add-int/lit8 v6, v6, -0x30

    neg-int v4, v6

    int-to-long v13, v4

    const/4 v4, 0x2

    :cond_23
    :goto_d
    const-wide/16 v9, 0x0

    goto/16 :goto_15

    :cond_24
    :goto_e
    invoke-direct {v0, v6}, Ldha;->b(C)Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_16

    .line 40
    :cond_25
    :goto_f
    if-ne v4, v5, :cond_2a

    if-eqz v16, :cond_29

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v13, v1

    if-nez v3, :cond_26

    if-eqz v17, :cond_29

    const/4 v8, 0x1

    goto :goto_10

    :cond_26
    move/from16 v8, v17

    :goto_10
    const-wide/16 v9, 0x0

    cmp-long v1, v13, v9

    if-nez v1, :cond_27

    if-nez v8, :cond_29

    goto :goto_11

    :cond_27
    if-eqz v8, :cond_28

    goto :goto_12

    :cond_28
    :goto_11
    neg-long v13, v13

    :goto_12
    iput-wide v13, v0, Ldha;->d:J

    iget v1, v0, Ldha;->b:I

    add-int/2addr v1, v7

    iput v1, v0, Ldha;->b:I

    const/16 v1, 0xf

    iput v1, v0, Ldha;->c:I

    const/16 v6, 0xf

    goto :goto_17

    :cond_29
    const/4 v4, 0x2

    :cond_2a
    if-eq v4, v5, :cond_2c

    const/4 v1, 0x4

    if-eq v4, v1, :cond_2c

    const/4 v1, 0x7

    if-ne v4, v1, :cond_2b

    goto :goto_13

    :cond_2b
    const/4 v6, 0x0

    goto :goto_17

    :cond_2c
    :goto_13
    iput v7, v0, Ldha;->e:I

    const/16 v1, 0x10

    iput v1, v0, Ldha;->c:I

    const/16 v6, 0x10

    goto :goto_17

    .line 42
    :cond_2d
    const/4 v8, 0x6

    if-ne v4, v5, :cond_33

    const/4 v4, 0x3

    goto :goto_15

    :cond_2e
    const/4 v8, 0x6

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    const/16 v17, 0x1

    goto :goto_15

    :cond_2f
    if-ne v4, v15, :cond_33

    goto :goto_14

    .line 41
    :cond_30
    const/4 v8, 0x6

    .line 42
    if-eq v4, v5, :cond_31

    const/4 v6, 0x4

    if-ne v4, v6, :cond_33

    :cond_31
    const/4 v4, 0x5

    goto :goto_15

    :cond_32
    const/4 v8, 0x6

    if-ne v4, v15, :cond_33

    :goto_14
    const/4 v4, 0x6

    :goto_15
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x6

    goto/16 :goto_6

    :cond_33
    :goto_16
    const/4 v6, 0x0

    .line 35
    :goto_17
    if-eqz v6, :cond_34

    return v6

    :cond_34
    iget-object v1, v0, Ldha;->a:[C

    iget v2, v0, Ldha;->b:I

    .line 43
    aget-char v1, v1, v2

    invoke-direct {v0, v1}, Ldha;->b(C)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 45
    invoke-direct/range {p0 .. p0}, Ldha;->g()V

    const/16 v1, 0xa

    iput v1, v0, Ldha;->c:I

    return v1

    .line 44
    :cond_35
    const-string v1, "Expected value"

    invoke-direct {v0, v1}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 42
    :cond_36
    return v3

    .line 39
    :cond_37
    const/4 v1, 0x1

    iput v1, v0, Ldha;->c:I

    return v1

    :cond_38
    const/4 v1, 0x1

    if-eq v4, v1, :cond_39

    goto :goto_19

    .line 30
    :cond_39
    const/4 v1, 0x4

    :goto_18
    iput v1, v0, Ldha;->c:I

    return v1

    :cond_3a
    iput v12, v0, Ldha;->c:I

    return v12

    .line 39
    :cond_3b
    :goto_19
    const/4 v1, 0x1

    if-eq v4, v1, :cond_3d

    if-ne v4, v5, :cond_3c

    goto :goto_1a

    .line 46
    :cond_3c
    nop

    .line 31
    const-string v1, "Unexpected value"

    invoke-direct {v0, v1}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 30
    :cond_3d
    :goto_1a
    invoke-direct/range {p0 .. p0}, Ldha;->g()V

    iget v1, v0, Ldha;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Ldha;->b:I

    const/4 v1, 0x7

    goto :goto_18

    .line 32
    :cond_3e
    invoke-direct/range {p0 .. p0}, Ldha;->g()V

    const/16 v1, 0x8

    :goto_1b
    iput v1, v0, Ldha;->c:I

    return v1

    :cond_3f
    const/16 v1, 0x9

    goto :goto_1b

    .line 25
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 46
    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_41
    :goto_1c
    const/4 v6, 0x4

    aput v6, v1, v2

    const/16 v1, 0x7d

    if-ne v4, v15, :cond_44

    .line 12
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ldha;->a(Z)I

    move-result v6

    if-eq v6, v10, :cond_44

    if-eq v6, v9, :cond_43

    if-ne v6, v1, :cond_42

    .line 16
    iput v5, v0, Ldha;->c:I

    return v5

    .line 10
    :cond_42
    nop

    .line 20
    const-string v1, "Unterminated object"

    invoke-direct {v0, v1}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 13
    :cond_43
    invoke-direct/range {p0 .. p0}, Ldha;->g()V

    :cond_44
    nop

    .line 14
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ldha;->a(Z)I

    move-result v2

    const/16 v6, 0x22

    if-eq v2, v6, :cond_49

    const/16 v6, 0x27

    if-eq v2, v6, :cond_48

    const-string v6, "Expected name"

    if-eq v2, v1, :cond_46

    .line 17
    invoke-direct/range {p0 .. p0}, Ldha;->g()V

    iget v1, v0, Ldha;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Ldha;->b:I

    int-to-char v1, v2

    .line 18
    invoke-direct {v0, v1}, Ldha;->b(C)Z

    move-result v1

    if-eqz v1, :cond_45

    const/16 v1, 0xe

    iput v1, v0, Ldha;->c:I

    return v1

    .line 20
    :cond_45
    nop

    .line 19
    invoke-direct {v0, v6}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 18
    :cond_46
    if-eq v4, v15, :cond_47

    iput v5, v0, Ldha;->c:I

    return v5

    .line 19
    :cond_47
    nop

    .line 15
    invoke-direct {v0, v6}, Ldha;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 16
    :cond_48
    invoke-direct/range {p0 .. p0}, Ldha;->g()V

    const/16 v1, 0xc

    :goto_1d
    iput v1, v0, Ldha;->c:I

    return v1

    :cond_49
    const/16 v1, 0xd

    goto :goto_1d
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget v3, p0, Ldha;->b:I

    add-int/2addr v3, v2

    iget v4, p0, Ldha;->k:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Ldha;->a:[C

    .line 92
    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Ldha;->g()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Ldha;->a:[C

    array-length v3, v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 93
    invoke-direct {p0, v3}, Ldha;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    .line 93
    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget-object v3, p0, Ldha;->a:[C

    iget v4, p0, Ldha;->b:I

    .line 95
    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Ldha;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Ldha;->b:I

    .line 96
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ldha;->b(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 92
    :goto_2
    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ldha;->a:[C

    iget v3, p0, Ldha;->b:I

    .line 98
    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Ldha;->a:[C

    iget v3, p0, Ldha;->b:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget v2, p0, Ldha;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Ldha;->b:I

    return-object v1

    .line 96
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ldha;->c:I

    iget-object v1, p0, Ldha;->n:[I

    .line 4
    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Ldha;->g:I

    iget-object v0, p0, Ldha;->j:Ljava/io/Reader;

    .line 5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    iget v0, p0, Ldha;->l:I

    iget v1, p0, Ldha;->b:I

    iget v2, p0, Ldha;->m:I

    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ldha;->g:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Ldha;->n:[I

    .line 51
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2e

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ldha;->h:[Ljava/lang/String;

    .line 53
    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5b

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ldha;->i:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Ldha;->c:I

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Ldha;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    return v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/16 v0, 0x9

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_7
    const/4 v0, 0x4

    return v0

    :pswitch_8
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldha;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
