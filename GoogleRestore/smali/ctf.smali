.class public final Lctf;
.super Lcsl;
.source "PG"


# static fields
.field public static final b:Lcsl;

.field private static final serialVersionUID:J


# instance fields
.field final transient c:[Ljava/lang/Object;

.field public final transient d:I

.field private final transient e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lctf;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lctf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lctf;->b:Lcsl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcsl;-><init>()V

    iput-object p1, p0, Lctf;->e:Ljava/lang/Object;

    iput-object p2, p0, Lctf;->c:[Ljava/lang/Object;

    iput p3, p0, Lctf;->d:I

    return-void
.end method

.method static a(I[Ljava/lang/Object;)Lctf;
    .locals 10

    if-nez p0, :cond_0

    sget-object p0, Lctf;->b:Lcsl;

    check-cast p0, Lctf;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 2
    aget-object p0, p1, v1

    aget-object v1, p1, v2

    invoke-static {p0, v1}, Lcrw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lctf;

    .line 3
    invoke-direct {p0, v0, p1, v2}, Lctf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 4
    :cond_1
    array-length v3, p1

    shr-int/2addr v3, v2

    invoke-static {p0, v3}, Lcrj;->b(II)V

    .line 5
    invoke-static {p0}, Lcsn;->a(I)I

    move-result v3

    if-ne p0, v2, :cond_2

    .line 6
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcrw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 34
    :cond_2
    add-int/lit8 v0, v3, -0x1

    const/16 v2, 0x80

    const/4 v4, -0x1

    if-gt v3, v2, :cond_6

    .line 7
    new-array v2, v3, [B

    .line 8
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    if-ge v1, p0, :cond_5

    add-int v3, v1, v1

    .line 9
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 10
    aget-object v5, p1, v5

    .line 11
    invoke-static {v4, v5}, Lcrw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcsb;->a(I)I

    move-result v6

    :goto_1
    and-int/2addr v6, v0

    .line 13
    aget-byte v7, v2, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_3

    int-to-byte v3, v3

    .line 15
    aput-byte v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 16
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v4, v5, p1, v7}, Lctf;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    move-object v0, v2

    goto/16 :goto_6

    :cond_6
    const v2, 0x8000

    if-gt v3, v2, :cond_a

    new-array v2, v3, [S

    .line 17
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([SS)V

    :goto_2
    if-ge v1, p0, :cond_9

    add-int v3, v1, v1

    .line 18
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 19
    aget-object v5, p1, v5

    .line 20
    invoke-static {v4, v5}, Lcrw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcsb;->a(I)I

    move-result v6

    :goto_3
    and-int/2addr v6, v0

    .line 22
    aget-short v7, v2, v6

    int-to-char v7, v7

    const v8, 0xffff

    if-ne v7, v8, :cond_7

    int-to-short v3, v3

    .line 24
    aput-short v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 23
    :cond_7
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 25
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v4, v5, p1, v7}, Lctf;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_9
    move-object v0, v2

    goto :goto_6

    :cond_a
    new-array v2, v3, [I

    .line 26
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    :goto_4
    if-ge v1, p0, :cond_d

    add-int v3, v1, v1

    .line 27
    aget-object v5, p1, v3

    xor-int/lit8 v6, v3, 0x1

    .line 28
    aget-object v6, p1, v6

    .line 29
    invoke-static {v5, v6}, Lcrw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcsb;->a(I)I

    move-result v7

    :goto_5
    and-int/2addr v7, v0

    .line 31
    aget v8, v2, v7

    if-ne v8, v4, :cond_b

    .line 33
    aput v3, v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 32
    :cond_b
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 35
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    invoke-static {v5, v6, p1, v8}, Lctf;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_d
    move-object v0, v2

    .line 6
    :goto_6
    new-instance v1, Lctf;

    .line 34
    invoke-direct {v1, v0, p1, p0}, Lctf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 40
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x27

    add-int/2addr p3, v2

    add-int/2addr p3, v3

    add-int/2addr p3, v4

    invoke-direct {v5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcsn;
    .locals 3

    .line 36
    new-instance v0, Lctc;

    iget-object v1, p0, Lctf;->c:[Ljava/lang/Object;

    iget v2, p0, Lctf;->d:I

    invoke-direct {v0, p0, v1, v2}, Lctc;-><init>(Lcsl;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final d()Lcsn;
    .locals 4

    .line 37
    new-instance v0, Lcte;

    iget-object v1, p0, Lctf;->c:[Ljava/lang/Object;

    iget v2, p0, Lctf;->d:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcte;-><init>([Ljava/lang/Object;II)V

    .line 38
    new-instance v1, Lctd;

    invoke-direct {v1, p0, v0}, Lctd;-><init>(Lcsl;Lcsi;)V

    return-object v1
.end method

.method public final f()Lcsd;
    .locals 4

    .line 39
    new-instance v0, Lcte;

    iget-object v1, p0, Lctf;->c:[Ljava/lang/Object;

    iget v2, p0, Lctf;->d:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcte;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lctf;->e:Ljava/lang/Object;

    iget-object v1, p0, Lctf;->c:[Ljava/lang/Object;

    iget v2, p0, Lctf;->d:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v0, 0x0

    .line 41
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 42
    :cond_1
    aget-object p1, v1, v4

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    goto/16 :goto_3

    .line 43
    :cond_3
    instance-of v2, v0, [B

    const/4 v5, -0x1

    if-eqz v2, :cond_6

    .line 44
    move-object v2, v0

    check-cast v2, [B

    array-length v0, v2

    add-int/lit8 v6, v0, -0x1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcsb;->a(I)I

    move-result v0

    :goto_0
    and-int/2addr v0, v6

    .line 46
    aget-byte v5, v2, v0

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_4

    goto :goto_3

    .line 47
    :cond_4
    aget-object v7, v1, v5

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v5, 0x1

    .line 48
    aget-object v3, v1, p1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_6
    instance-of v2, v0, [S

    if-eqz v2, :cond_9

    .line 50
    move-object v2, v0

    check-cast v2, [S

    array-length v0, v2

    add-int/lit8 v6, v0, -0x1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcsb;->a(I)I

    move-result v0

    :goto_1
    and-int/2addr v0, v6

    .line 52
    aget-short v5, v2, v0

    int-to-char v5, v5

    const v7, 0xffff

    if-ne v5, v7, :cond_7

    goto :goto_3

    .line 53
    :cond_7
    aget-object v7, v1, v5

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v5, 0x1

    .line 54
    aget-object v3, v1, p1

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_9
    check-cast v0, [I

    array-length v2, v0

    add-int/2addr v2, v5

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcsb;->a(I)I

    move-result v6

    :goto_2
    and-int/2addr v6, v2

    .line 57
    aget v7, v0, v6

    if-ne v7, v5, :cond_a

    goto :goto_3

    .line 58
    :cond_a
    aget-object v8, v1, v7

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    xor-int/lit8 p1, v7, 0x1

    .line 59
    aget-object v3, v1, p1

    .line 0
    :goto_3
    return-object v3

    .line 59
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lctf;->d:I

    return v0
.end method
