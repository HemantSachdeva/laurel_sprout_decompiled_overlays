.class public abstract Lcwj;
.super Lcwh;
.source "PG"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n|\\r(?:\\n)?"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const-string v0, "\n"

    :cond_0
    sput-object v0, Lcwj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcwh;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;I)I
    .locals 3

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-ge p1, v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x25

    if-eq p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_2

    const/16 v2, 0x6e

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    return v0

    :cond_2
    :goto_1
    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v1

    .line 7
    const-string p1, "trailing unquoted \'%\' character"

    invoke-static {p1, p0, v0}, Lcwi;->b(Ljava/lang/String;Ljava/lang/String;I)Lcwi;

    move-result-object p0

    throw p0

    :cond_4
    return v1
.end method


# virtual methods
.method public abstract a(Lcwg;ILjava/lang/String;III)I
.end method

.method public final a(Lcwg;)V
    .locals 13

    invoke-virtual {p1}, Lcwg;->b()Ljava/lang/String;

    move-result-object v7

    .line 8
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcwj;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v9, -0x1

    move v4, v0

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    if-ltz v4, :cond_c

    add-int/lit8 v2, v4, 0x1

    move v3, v2

    const/4 v5, 0x0

    .line 9
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const-string v10, "unterminated parameter"

    if-ge v3, v6, :cond_b

    add-int/lit8 v6, v3, 0x1

    .line 10
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v11, v3, -0x30

    int-to-char v11, v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_1

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v11

    const v3, 0xf4240

    if-ge v5, v3, :cond_0

    move v3, v6

    goto :goto_1

    .line 26
    :cond_0
    nop

    .line 19
    const-string p1, "index too large"

    invoke-static {p1, v7, v4, v6}, Lcwi;->a(Ljava/lang/String;Ljava/lang/String;II)Lcwi;

    move-result-object p1

    throw p1

    .line 10
    :cond_1
    const/16 v11, 0x24

    if-ne v3, v11, :cond_5

    add-int/lit8 v1, v6, -0x1

    sub-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    .line 21
    add-int/lit8 v5, v5, -0x1

    .line 12
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v6, v1, :cond_2

    .line 22
    add-int/lit8 v1, v6, 0x1

    .line 13
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move v11, v0

    move v12, v5

    move v5, v6

    move v6, v1

    goto :goto_2

    .line 22
    :cond_2
    invoke-static {v10, v7, v4}, Lcwi;->b(Ljava/lang/String;Ljava/lang/String;I)Lcwi;

    move-result-object p1

    throw p1

    .line 21
    :cond_3
    const-string p1, "index has leading zero"

    invoke-static {p1, v7, v4, v6}, Lcwi;->a(Ljava/lang/String;Ljava/lang/String;II)Lcwi;

    move-result-object p1

    throw p1

    .line 20
    :cond_4
    const-string p1, "missing index"

    invoke-static {p1, v7, v4, v6}, Lcwi;->a(Ljava/lang/String;Ljava/lang/String;II)Lcwi;

    move-result-object p1

    throw p1

    .line 8
    :cond_5
    const/16 v5, 0x3c

    if-ne v3, v5, :cond_8

    if-eq v1, v9, :cond_7

    .line 14
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v6, v2, :cond_6

    .line 24
    add-int/lit8 v2, v6, 0x1

    .line 15
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move v11, v0

    move v12, v1

    move v5, v6

    move v6, v2

    goto :goto_2

    .line 24
    :cond_6
    invoke-static {v10, v7, v4}, Lcwi;->b(Ljava/lang/String;Ljava/lang/String;I)Lcwi;

    move-result-object p1

    throw p1

    .line 23
    :cond_7
    const-string p1, "invalid relative parameter"

    invoke-static {p1, v7, v4, v6}, Lcwi;->a(Ljava/lang/String;Ljava/lang/String;II)Lcwi;

    move-result-object p1

    throw p1

    .line 15
    :cond_8
    add-int/lit8 v1, v0, 0x1

    move v12, v0

    move v11, v1

    move v5, v2

    .line 13
    :goto_2
    add-int/2addr v6, v9

    .line 16
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_a

    .line 17
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, -0x21

    add-int/lit8 v0, v0, -0x41

    int-to-char v0, v0

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_9

    .line 18
    move-object v0, p0

    move-object v1, p1

    move v2, v12

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lcwj;->a(Lcwg;ILjava/lang/String;III)I

    move-result v0

    .line 8
    invoke-static {v7, v0}, Lcwj;->a(Ljava/lang/String;I)I

    move-result v4

    move v0, v11

    move v1, v12

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 15
    :cond_a
    nop

    .line 25
    invoke-static {v10, v7, v4}, Lcwi;->b(Ljava/lang/String;Ljava/lang/String;I)Lcwi;

    move-result-object p1

    throw p1

    :cond_b
    nop

    .line 26
    invoke-static {v10, v7, v4}, Lcwi;->b(Ljava/lang/String;Ljava/lang/String;I)Lcwi;

    move-result-object p1

    throw p1

    .line 19
    :cond_c
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 3

    move v0, p3

    :goto_0
    if-ge p3, p4, :cond_4

    add-int/lit8 v1, p3, 0x1

    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v2, 0x25

    if-eq p3, v2, :cond_0

    goto :goto_2

    :cond_0
    if-ne v1, p4, :cond_1

    goto :goto_3

    .line 28
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v2, :cond_2

    .line 29
    invoke-virtual {p1, p2, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v2, 0x6e

    if-ne p3, v2, :cond_3

    add-int/lit8 p3, v1, -0x1

    .line 30
    invoke-virtual {p1, p2, v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sget-object p3, Lcwj;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move p3, v0

    goto :goto_0

    .line 31
    :cond_3
    nop

    .line 0
    :goto_2
    move p3, v1

    goto :goto_0

    .line 27
    :cond_4
    :goto_3
    if-ge v0, p4, :cond_5

    .line 32
    invoke-virtual {p1, p2, v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method
