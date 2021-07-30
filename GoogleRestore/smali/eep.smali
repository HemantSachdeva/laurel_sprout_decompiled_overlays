.class public final Leep;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Leep;->a:J

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 5

    .line 5
    const-string v0, "waitForReady"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object p0, v3, v0

    .line 8
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not Boolean"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 14
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    .line 13
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not List"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/ClassCastException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const-string p0, "value %s for idx %d in %s is not object"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/Long;
    .locals 18

    .line 42
    const-string v0, "timeout"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Leep;->g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 43
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "Invalid duration string: "

    const/4 v3, 0x0

    if-nez v1, :cond_17

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, -0x1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x73

    if-eq v1, v5, :cond_0

    goto/16 :goto_f

    .line 44
    :cond_0
    nop

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-ne v1, v5, :cond_1

    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_0
    nop

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    const/16 v8, 0x2e

    .line 48
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v4, :cond_2

    add-int/lit8 v4, v8, 0x1

    .line 49
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-virtual {v5, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 51
    :cond_2
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 52
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    .line 62
    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0x9

    if-ge v8, v10, :cond_6

    mul-int/lit8 v9, v9, 0xa

    .line 53
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_5

    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-lt v10, v11, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x39

    if-gt v10, v11, :cond_4

    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    goto :goto_2

    .line 65
    :cond_4
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Invalid nanoseconds."

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 55
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 52
    :cond_6
    :goto_3
    const-wide/16 v7, 0x0

    cmp-long v10, v4, v7

    if-gez v10, :cond_8

    .line 56
    new-instance v1, Ljava/text/ParseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 44
    :cond_7
    new-instance v0, Ljava/lang/String;

    .line 56
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {v1, v0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    if-eqz v1, :cond_9

    neg-long v4, v4

    neg-int v9, v9

    goto :goto_5

    .line 62
    :cond_9
    nop

    .line 56
    :goto_5
    int-to-long v0, v9

    :try_start_2
    sget-wide v10, Leep;->a:J

    neg-long v12, v10

    cmp-long v2, v0, v12

    if-lez v2, :cond_b

    cmp-long v2, v0, v10

    if-ltz v2, :cond_a

    goto :goto_6

    .line 62
    :cond_a
    goto :goto_9

    .line 57
    :cond_b
    :goto_6
    div-long v12, v0, v10

    add-long v14, v4, v12

    xor-long v16, v4, v12

    cmp-long v2, v16, v7

    if-gez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_7

    .line 62
    :cond_c
    const/4 v2, 0x0

    .line 57
    :goto_7
    xor-long v16, v4, v14

    cmp-long v9, v16, v7

    if-ltz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_8

    .line 62
    :cond_d
    const/4 v9, 0x0

    .line 57
    :goto_8
    or-int/2addr v2, v9

    const-string v9, "checkedAdd"

    if-eqz v2, :cond_16

    .line 63
    nop

    .line 58
    rem-long/2addr v0, v10

    long-to-int v9, v0

    move-wide v4, v14

    :goto_9
    cmp-long v0, v4, v7

    if-lez v0, :cond_e

    if-gez v9, :cond_e

    int-to-long v0, v9

    add-long/2addr v0, v10

    long-to-int v9, v0

    const-wide/16 v0, -0x1

    add-long/2addr v4, v0

    goto :goto_a

    .line 62
    :cond_e
    nop

    .line 58
    :goto_a
    const-wide/16 v0, 0x1

    cmp-long v2, v4, v7

    if-gez v2, :cond_f

    if-lez v9, :cond_f

    int-to-long v12, v9

    sub-long/2addr v12, v10

    long-to-int v9, v12

    add-long/2addr v4, v0

    goto :goto_b

    .line 62
    :cond_f
    nop

    .line 58
    :goto_b
    const-wide v12, -0x4979cb9e00L

    cmp-long v2, v4, v12

    if-ltz v2, :cond_15

    const-wide v12, 0x4979cb9e00L

    cmp-long v2, v4, v12

    if-gtz v2, :cond_15

    .line 60
    int-to-long v12, v9

    const-wide/32 v14, -0x3b9ac9ff

    cmp-long v2, v12, v14

    if-ltz v2, :cond_15

    cmp-long v2, v12, v10

    if-gez v2, :cond_15

    cmp-long v2, v4, v7

    if-ltz v2, :cond_10

    if-gez v9, :cond_11

    :cond_10
    cmp-long v2, v4, v7

    if-gtz v2, :cond_15

    if-gtz v9, :cond_15

    .line 61
    :cond_11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    add-long v9, v4, v12

    xor-long/2addr v12, v4

    cmp-long v2, v12, v7

    if-gez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_c

    .line 62
    :cond_12
    const/4 v2, 0x0

    .line 61
    :goto_c
    xor-long/2addr v4, v9

    cmp-long v11, v4, v7

    if-ltz v11, :cond_13

    const/4 v3, 0x1

    goto :goto_d

    .line 62
    :cond_13
    nop

    .line 61
    :goto_d
    or-int/2addr v2, v3

    if-eqz v2, :cond_14

    goto :goto_e

    .line 62
    :cond_14
    const/16 v2, 0x3f

    ushr-long v2, v9, v2

    xor-long/2addr v0, v2

    const-wide v2, 0x7fffffffffffffffL

    add-long v9, v0, v2

    :goto_e
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    .line 58
    :cond_15
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds"

    .line 60
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_16
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    .line 63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1

    .line 64
    :catch_0
    move-exception v0

    :try_start_5
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Duration value is out of range."

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 44
    :cond_17
    :goto_f
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 66
    :cond_18
    new-instance v0, Ljava/lang/String;

    .line 44
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_10
    invoke-direct {v1, v0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1

    .line 55
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 66
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Leep;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    invoke-static {p0}, Leep;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public static c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 17
    invoke-static {p0, p1}, Leep;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    .line 21
    const-string p0, "value \'%s\' for idx %d in \'%s\' is not string"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object p0
.end method

.method public static d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 32
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 34
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    .line 35
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not object"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;
    .locals 4

    .line 22
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 26
    check-cast v0, Ljava/lang/Double;

    return-object v0

    .line 24
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    .line 25
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not Double"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static f(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .line 27
    invoke-static {p0, p1}, Leep;->e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p1

    int-to-double v0, p1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    .line 30
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1f

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Number expected to be integer: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static g(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 37
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 39
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    .line 40
    const-string p0, "value \'%s\' for key \'%s\' in \'%s\' is not String"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
