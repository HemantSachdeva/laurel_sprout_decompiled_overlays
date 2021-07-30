.class public final synthetic Laei;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Predicate;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laei;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    return-void
.end method


# virtual methods
.method public final and(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$$CC;->and$$dflt$$(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final negate()Lj$/util/function/Predicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/Predicate$$CC;->negate$$dflt$$(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public final or(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$$CC;->or$$dflt$$(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Laei;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    check-cast p1, Latw;

    iget-object v0, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v0, v0, Lagf;->j:Ljava/lang/String;

    iget-wide v1, p1, Latw;->b:J

    invoke-static {}, Lcwu;->a()Lcwr;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    check-cast p1, Lcwn;

    invoke-virtual {p1}, Lcwn;->a()Lcws;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Lcws;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    invoke-interface {p1}, Lcws;->a()Lcwq;

    move-result-object p1

    invoke-virtual {p1}, Lcwq;->b()[B

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    new-array v1, v3, [B

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p1, v3

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, -0x2

    aget-byte p1, p1, v2

    and-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    sget-object p1, Lcxd;->f:Lcxd;

    move-object v3, p1

    check-cast v3, Lcxc;

    iget-object v5, v3, Lcxc;->d:Lcxd;

    if-nez v5, :cond_8

    iget-object v5, v3, Lcxc;->b:Lcwy;

    iget-object v6, v5, Lcwy;->b:[C

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_6

    aget-char v9, v6, v8

    invoke-static {v9}, Lcqd;->a(C)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v6, v5, Lcwy;->b:[C

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-char v9, v6, v8

    const/16 v10, 0x61

    if-lt v9, v10, :cond_1

    const/16 v10, 0x7a

    if-gt v9, v10, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    xor-int/2addr v4, v6

    const-string v6, "Cannot call lowerCase() on a mixed-case alphabet"

    invoke-static {v4, v6}, Lcrj;->b(ZLjava/lang/Object;)V

    iget-object v4, v5, Lcwy;->b:[C

    array-length v4, v4

    new-array v4, v4, [C

    :goto_3
    iget-object v6, v5, Lcwy;->b:[C

    array-length v7, v6

    if-ge v2, v7, :cond_4

    aget-char v6, v6, v2

    invoke-static {v6}, Lcqd;->a(C)Z

    move-result v7

    if-eqz v7, :cond_3

    xor-int/lit8 v6, v6, 0x20

    :cond_3
    int-to-char v6, v6

    aput-char v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    new-instance v2, Lcwy;

    iget-object v5, v5, Lcwy;->a:Ljava/lang/String;

    const-string v6, ".lowerCase()"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Lcwy;-><init>(Ljava/lang/String;[C)V

    move-object v5, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    iget-object v2, v3, Lcxc;->b:Lcwy;

    if-ne v5, v2, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Lcwz;

    invoke-direct {p1, v5}, Lcwz;-><init>(Lcwy;)V

    :goto_5
    iput-object p1, v3, Lcxc;->d:Lcxd;

    move-object v5, p1

    :cond_8
    invoke-virtual {v5, v1}, Lcxd;->a([B)Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_6
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
