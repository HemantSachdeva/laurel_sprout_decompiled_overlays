.class final Ldlx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldne;

.field public static final b:Ldne;

.field public static final c:Ldne;

.field private static final d:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    .line 1
    :goto_0
    sput-object v0, Ldlx;->d:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ldlx;->a(Z)Ldne;

    move-result-object v0

    sput-object v0, Ldlx;->a:Ldne;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ldlx;->a(Z)Ldne;

    move-result-object v0

    sput-object v0, Ldlx;->b:Ldne;

    new-instance v0, Ldne;

    invoke-direct {v0}, Ldne;-><init>()V

    sput-object v0, Ldlx;->c:Ldne;

    return-void
.end method

.method static a(ILjava/lang/Object;Ldlw;)I
    .locals 1

    .line 43
    instance-of v0, p1, Ldks;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Ldks;

    invoke-static {p0, p1}, Ldij;->a(ILdks;)I

    move-result p0

    return p0

    .line 45
    :cond_0
    check-cast p1, Ldlj;

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    .line 46
    invoke-static {p1, p2}, Ldij;->a(Ldlj;Ldlw;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static a(ILjava/util/List;)I
    .locals 4

    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int p0, p0, v0

    .line 71
    instance-of v2, p1, Ldku;

    if-eqz v2, :cond_2

    .line 76
    check-cast p1, Ldku;

    :goto_0
    if-ge v1, v0, :cond_4

    .line 77
    invoke-interface {p1, v1}, Ldku;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 78
    instance-of v3, v2, Ldib;

    if-eqz v3, :cond_1

    .line 79
    check-cast v2, Ldib;

    invoke-static {v2}, Ldij;->b(Ldib;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_1

    .line 80
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ldij;->b(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 79
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_2
    nop

    :goto_2
    if-ge v1, v0, :cond_4

    .line 72
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 73
    instance-of v3, v2, Ldib;

    if-eqz v3, :cond_3

    .line 74
    check-cast v2, Ldib;

    invoke-static {v2}, Ldij;->b(Ldib;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_3

    .line 75
    :cond_3
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ldij;->b(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 74
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    :cond_4
    return p0
.end method

.method static a(ILjava/util/List;Ldlw;)I
    .locals 4

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int p0, p0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 50
    instance-of v3, v2, Ldks;

    if-eqz v3, :cond_1

    .line 51
    check-cast v2, Ldks;

    invoke-static {v2}, Ldij;->a(Ldks;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_1

    .line 52
    :cond_1
    check-cast v2, Ldlj;

    invoke-static {v2, p2}, Ldij;->a(Ldlj;Ldlw;)I

    move-result v2

    add-int/2addr p0, v2

    .line 51
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_2
    return p0
.end method

.method static a(Ljava/util/List;)I
    .locals 5

    .line 38
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 39
    :cond_0
    instance-of v2, p0, Ldky;

    if-eqz v2, :cond_1

    .line 41
    check-cast p0, Ldky;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 42
    invoke-virtual {p0, v1}, Ldky;->c(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldij;->f(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 40
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ldij;->f(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 42
    :cond_3
    return v2
.end method

.method private static a(Z)Ldne;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.UnknownFieldSetSchema"

    .line 109
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    move-object v1, v0

    .line 109
    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 110
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldne;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    return-object v0
.end method

.method static a(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p2, :cond_0

    .line 130
    invoke-static {}, Ldmj;->a()Ldmj;

    move-result-object p2

    :cond_0
    int-to-long v0, p1

    .line 131
    invoke-static {p2, p0, v0, v1}, Ldne;->a(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method static a(ILjava/util/List;Ldkh;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    if-nez p2, :cond_0

    return-object p3

    .line 97
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 99
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 100
    invoke-interface {p2, v3}, Ldkh;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v1, v2, :cond_1

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_2
    invoke-static {p0, v3, p3}, Ldlx;->a(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 101
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_3
    if-ne v2, v0, :cond_4

    goto :goto_3

    .line 103
    :cond_4
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object p3

    .line 104
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    invoke-interface {p2, v0}, Ldkh;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    invoke-static {p0, v0, p3}, Ldlx;->a(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    nop

    .line 102
    :goto_3
    return-object p3
.end method

.method public static a(ILjava/util/List;Ldik;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 258
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    instance-of v0, p1, Ldku;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 262
    move-object v0, p1

    check-cast v0, Ldku;

    .line 263
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 264
    invoke-interface {v0, v1}, Ldku;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 265
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p2, Ldik;->a:Ldij;

    .line 266
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p0, v2}, Ldij;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p2, Ldik;->a:Ldij;

    .line 267
    check-cast v2, Ldib;

    invoke-virtual {v3, p0, v2}, Ldij;->a(ILdib;)V

    .line 266
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    nop

    .line 260
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p2, Ldik;->a:Ldij;

    .line 261
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Ldij;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static a(ILjava/util/List;Ldik;Ldlw;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 216
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 217
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p0, v1, p3}, Ldik;->a(ILjava/lang/Object;Ldlw;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(ILjava/util/List;Ldik;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 145
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 148
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 149
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 150
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 151
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 152
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 153
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ldij;->a(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 146
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 147
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p0, v1, v2}, Ldij;->a(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 1

    const-class v0, Ldkd;

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ldlx;->d:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 128
    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1

    .line 118
    invoke-static {p0, p2, p3}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, p3}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 119
    invoke-static {v0, p1}, Ldmg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 120
    invoke-static {p0, p2, p3, p1}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_1

    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static b(ILjava/util/List;)I
    .locals 2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int v0, v0, p0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_1

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldib;

    invoke-static {p0}, Ldij;->b(Ldib;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static b(ILjava/util/List;Ldlw;)I
    .locals 4

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldlj;

    invoke-static {p0, v3, p2}, Ldij;->b(ILdlj;Ldlw;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method static b(Ljava/util/List;)I
    .locals 5

    .line 92
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    instance-of v2, p0, Ldky;

    if-eqz v2, :cond_1

    .line 95
    check-cast p0, Ldky;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 96
    invoke-virtual {p0, v1}, Ldky;->c(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldij;->f(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 94
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ldij;->f(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 96
    :cond_3
    return v2
.end method

.method public static b(ILjava/util/List;Ldik;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p2, Ldik;->a:Ldij;

    .line 144
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldib;

    invoke-virtual {v1, p0, v2}, Ldij;->a(ILdib;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(ILjava/util/List;Ldik;Ldlw;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 193
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 194
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p0, v1, p3}, Ldik;->b(ILjava/lang/Object;Ldlw;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(ILjava/util/List;Ldik;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 183
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 186
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 187
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 188
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 189
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 190
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 191
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p3}, Ldij;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 184
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p0, v1}, Ldij;->a(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 111
    invoke-static {p1}, Ldll;->a(Ljava/lang/Object;)Ldjt;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ldjt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-static {p0}, Ldll;->b(Ljava/lang/Object;)Ldjt;

    move-result-object p0

    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v1, p1, Ldjt;->a:Ldme;

    invoke-virtual {v1}, Ldme;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v1, p1, Ldjt;->a:Ldme;

    invoke-virtual {v1, v0}, Ldme;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldjt;->a(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p1, Ldjt;->a:Ldme;

    invoke-virtual {p1}, Ldme;->b()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-virtual {p0, v0}, Ldjt;->a(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static c(ILjava/util/List;)I
    .locals 0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-static {p0}, Ldij;->n(I)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static c(Ljava/util/List;)I
    .locals 5

    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    instance-of v2, p0, Ldky;

    if-eqz v2, :cond_1

    .line 67
    check-cast p0, Ldky;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 68
    invoke-virtual {p0, v1}, Ldky;->c(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldij;->g(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 66
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ldij;->g(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 68
    :cond_3
    return v2
.end method

.method public static c(ILjava/util/List;Ldik;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 204
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 208
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 209
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 210
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ldij;->f(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 211
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 212
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 213
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 214
    invoke-virtual {p0, v1, v2}, Ldij;->c(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 205
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 206
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 207
    invoke-virtual {p3, p0, v1, v2}, Ldij;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 121
    invoke-static {p0}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object v0

    .line 122
    invoke-static {p1}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object p1

    .line 123
    sget-object v1, Ldmj;->a:Ldmj;

    invoke-virtual {p1, v1}, Ldmj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {v0, p1}, Ldmj;->a(Ldmj;Ldmj;)Ldmj;

    move-result-object v0

    .line 125
    :goto_0
    invoke-static {p0, v0}, Ldne;->a(Ljava/lang/Object;Ldmj;)V

    return-void
.end method

.method static d(ILjava/util/List;)I
    .locals 1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 12
    :cond_0
    invoke-static {p1}, Ldlx;->d(Ljava/util/List;)I

    move-result p1

    .line 13
    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static d(Ljava/util/List;)I
    .locals 4

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 15
    :cond_0
    instance-of v2, p0, Ldke;

    if-eqz v2, :cond_1

    .line 17
    check-cast p0, Ldke;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 18
    invoke-virtual {p0, v1}, Ldke;->b(I)I

    move-result v3

    invoke-static {v3}, Ldij;->i(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 16
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ldij;->i(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 18
    :cond_3
    return v2
.end method

.method public static d(ILjava/util/List;Ldik;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 277
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 280
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 281
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 282
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ldij;->f(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 283
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 284
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 285
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ldij;->c(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 278
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 279
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p0, v1, v2}, Ldij;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static e(ILjava/util/List;)I
    .locals 0

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 20
    :cond_0
    invoke-static {p0}, Ldij;->p(I)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static e(Ljava/util/List;)I
    .locals 4

    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    instance-of v2, p0, Ldke;

    if-eqz v2, :cond_1

    .line 33
    check-cast p0, Ldke;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 34
    invoke-virtual {p0, v1}, Ldke;->b(I)I

    move-result v3

    invoke-static {v3}, Ldij;->i(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 32
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ldij;->i(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 34
    :cond_3
    return v2
.end method

.method public static e(ILjava/util/List;Ldik;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 252
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 253
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 254
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ldij;->g(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 255
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 256
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 257
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ldij;->e(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 250
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 251
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p0, v1, v2}, Ldij;->c(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static f(ILjava/util/List;)I
    .locals 0

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 23
    :cond_0
    invoke-static {p0}, Ldij;->q(I)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static f(Ljava/util/List;)I
    .locals 4

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    instance-of v2, p0, Ldke;

    if-eqz v2, :cond_1

    .line 87
    check-cast p0, Ldke;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 88
    invoke-virtual {p0, v1}, Ldke;->b(I)I

    move-result v3

    invoke-static {v3}, Ldij;->j(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 86
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ldij;->j(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 88
    :cond_3
    return v2
.end method

.method public static f(ILjava/util/List;Ldik;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 174
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 177
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 178
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 179
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 180
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 181
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ldij;->d(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 175
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 176
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p0, v1, v2}, Ldij;->b(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static g(ILjava/util/List;)I
    .locals 1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 28
    :cond_0
    invoke-static {p1}, Ldlx;->e(Ljava/util/List;)I

    move-result p1

    .line 29
    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static g(Ljava/util/List;)I
    .locals 4

    .line 56
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    instance-of v2, p0, Ldke;

    if-eqz v2, :cond_1

    .line 59
    check-cast p0, Ldke;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 60
    invoke-virtual {p0, v1}, Ldke;->b(I)I

    move-result v3

    invoke-static {v3}, Ldij;->k(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 58
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ldij;->k(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 60
    :cond_3
    return v2
.end method

.method public static g(ILjava/util/List;Ldik;Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 229
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 233
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 234
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 235
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 236
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 237
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 238
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 239
    invoke-virtual {p0, v1, v2}, Ldij;->d(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 230
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 231
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 232
    invoke-virtual {p3, p0, v1, v2}, Ldij;->b(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static h(ILjava/util/List;)I
    .locals 1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    invoke-static {p1}, Ldlx;->a(Ljava/util/List;)I

    move-result v0

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int p1, p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static h(Ljava/util/List;)I
    .locals 0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static h(ILjava/util/List;Ldik;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 195
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 198
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 199
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 200
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ldij;->i(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 201
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 202
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 203
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Ldij;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 196
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 197
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p0, v1}, Ldij;->c(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static i(ILjava/util/List;)I
    .locals 1

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_0
    invoke-static {p1}, Ldlx;->g(Ljava/util/List;)I

    move-result p1

    .line 55
    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static i(Ljava/util/List;)I
    .locals 0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static i(ILjava/util/List;Ldik;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 268
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 271
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 272
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 273
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ldij;->j(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 274
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 275
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 276
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Ldij;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 269
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 270
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p0, v1}, Ldij;->d(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static j(ILjava/util/List;)I
    .locals 1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 62
    :cond_0
    invoke-static {p1}, Ldlx;->c(Ljava/util/List;)I

    move-result p1

    .line 63
    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static j(Ljava/util/List;)I
    .locals 0

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static j(ILjava/util/List;Ldik;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 240
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 243
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 244
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 245
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ldij;->k(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 246
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 247
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 248
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Ldij;->g(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 241
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 242
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p0, v1}, Ldij;->f(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static k(ILjava/util/List;)I
    .locals 1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_0
    invoke-static {p1}, Ldlx;->f(Ljava/util/List;)I

    move-result p1

    .line 83
    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static k(ILjava/util/List;Ldik;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 168
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 169
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 170
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 171
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 172
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 173
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Ldij;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 166
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p0, v1}, Ldij;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static l(ILjava/util/List;)I
    .locals 1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 90
    :cond_0
    invoke-static {p1}, Ldlx;->b(Ljava/util/List;)I

    move-result p1

    .line 91
    invoke-static {p0}, Ldij;->h(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static l(ILjava/util/List;Ldik;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 218
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 222
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 223
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 224
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 225
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 226
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 228
    invoke-virtual {p0, p3}, Ldij;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 219
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 220
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 221
    invoke-virtual {p3, p0, v1}, Ldij;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static m(ILjava/util/List;Ldik;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 158
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 159
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 160
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ldij;->i(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 161
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 162
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 163
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 164
    invoke-virtual {p0, p3}, Ldij;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 155
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 156
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 157
    invoke-virtual {p3, p0, v1}, Ldij;->c(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static n(ILjava/util/List;Ldik;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 132
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p2, Ldik;->a:Ldij;

    const/4 v1, 0x2

    .line 135
    invoke-virtual {p3, p0, v1}, Ldij;->b(II)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 136
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 137
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ldik;->a:Ldij;

    .line 138
    invoke-virtual {p0, p3}, Ldij;->d(I)V

    .line 139
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    iget-object p0, p2, Ldik;->a:Ldij;

    .line 140
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 141
    invoke-virtual {p0, p3}, Ldij;->b(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 133
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p2, Ldik;->a:Ldij;

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p0, v1}, Ldij;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
