.class final Ldjt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:Ldjt;


# instance fields
.field final a:Ldme;

.field public b:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldjt;

    .line 1
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldjt;-><init>([B)V

    sput-object v0, Ldjt;->c:Ldjt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x10

    invoke-static {v0}, Ldme;->a(I)Ldme;

    move-result-object v0

    iput-object v0, p0, Ldjt;->a:Ldme;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 3
    const/4 p1, 0x0

    invoke-static {p1}, Ldme;->a(I)Ldme;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldjt;->a:Ldme;

    .line 4
    invoke-virtual {p0}, Ldjt;->b()V

    .line 5
    invoke-virtual {p0}, Ldjt;->b()V

    return-void
.end method

.method static a(Ldmz;ILjava/lang/Object;)I
    .locals 2

    .line 25
    invoke-static {p1}, Ldij;->h(I)I

    move-result p1

    .line 26
    sget-object v0, Ldmz;->j:Ldmz;

    if-ne p0, v0, :cond_0

    .line 27
    move-object v0, p2

    check-cast v0, Ldlj;

    invoke-static {v0}, Ldkl;->a(Ldlj;)V

    add-int/2addr p1, p1

    .line 28
    :cond_0
    sget-object v0, Ldna;->a:Ldna;

    invoke-virtual {p0}, Ldmz;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 54
    new-instance p0, Ljava/lang/RuntimeException;

    .line 55
    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldij;->g(J)I

    move-result v0

    goto/16 :goto_0

    .line 33
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ldij;->k(I)I

    move-result v0

    goto/16 :goto_0

    .line 34
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    const/16 v0, 0x8

    goto/16 :goto_0

    .line 35
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_0

    .line 29
    :pswitch_4
    instance-of p0, p2, Ldkf;

    if-eqz p0, :cond_1

    .line 30
    check-cast p2, Ldkf;

    invoke-interface {p2}, Ldkf;->a()I

    move-result p0

    invoke-static {p0}, Ldij;->i(I)I

    move-result v0

    goto/16 :goto_0

    .line 31
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ldij;->i(I)I

    move-result v0

    goto/16 :goto_0

    .line 36
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ldij;->j(I)I

    move-result v0

    goto/16 :goto_0

    .line 37
    :pswitch_6
    instance-of p0, p2, Ldib;

    if-eqz p0, :cond_2

    .line 38
    check-cast p2, Ldib;

    invoke-static {p2}, Ldij;->b(Ldib;)I

    move-result v0

    goto/16 :goto_0

    .line 39
    :cond_2
    check-cast p2, [B

    invoke-static {p2}, Ldij;->b([B)I

    move-result v0

    goto/16 :goto_0

    .line 43
    :pswitch_7
    instance-of p0, p2, Ldkr;

    if-eqz p0, :cond_3

    .line 44
    check-cast p2, Ldkr;

    invoke-static {p2}, Ldij;->a(Ldks;)I

    move-result v0

    goto :goto_0

    .line 45
    :cond_3
    check-cast p2, Ldlj;

    invoke-static {p2}, Ldij;->b(Ldlj;)I

    move-result v0

    goto :goto_0

    .line 46
    :pswitch_8
    check-cast p2, Ldlj;

    invoke-static {p2}, Ldij;->d(Ldlj;)I

    move-result v0

    goto :goto_0

    .line 40
    :pswitch_9
    instance-of p0, p2, Ldib;

    if-eqz p0, :cond_4

    .line 41
    check-cast p2, Ldib;

    invoke-static {p2}, Ldij;->b(Ldib;)I

    move-result v0

    goto :goto_0

    .line 42
    :cond_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ldij;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 47
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 49
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    const/16 v0, 0x8

    goto :goto_0

    .line 50
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ldij;->i(I)I

    move-result v0

    goto :goto_0

    .line 51
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldij;->f(J)I

    move-result v0

    goto :goto_0

    .line 52
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldij;->f(J)I

    move-result v0

    goto :goto_0

    .line 53
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    goto :goto_0

    .line 54
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    const/16 v0, 0x8

    .line 30
    :goto_0
    add-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 19
    instance-of v0, p0, Ldlo;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Ldlo;

    invoke-interface {p0}, Ldlo;->e()Ldlo;

    move-result-object p0

    return-object p0

    .line 21
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 22
    check-cast p0, [B

    .line 23
    array-length v0, p0

    new-array v1, v0, [B

    .line 24
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method static a(Ldij;Ldmz;ILjava/lang/Object;)V
    .locals 1

    .line 149
    sget-object v0, Ldmz;->j:Ldmz;

    if-eq p1, v0, :cond_3

    iget v0, p1, Ldmz;->t:I

    .line 150
    invoke-virtual {p0, p2, v0}, Ldij;->b(II)V

    .line 151
    sget-object p2, Ldna;->a:Ldna;

    invoke-virtual {p1}, Ldmz;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 157
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldij;->e(J)V

    return-void

    .line 158
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldij;->g(I)V

    return-void

    .line 159
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 160
    invoke-virtual {p0, p1, p2}, Ldij;->d(J)V

    return-void

    .line 161
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Ldij;->e(I)V

    return-void

    .line 152
    :pswitch_4
    instance-of p1, p3, Ldkf;

    if-eqz p1, :cond_0

    .line 153
    check-cast p3, Ldkf;

    invoke-interface {p3}, Ldkf;->a()I

    move-result p1

    .line 154
    invoke-virtual {p0, p1}, Ldij;->c(I)V

    return-void

    .line 155
    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 156
    invoke-virtual {p0, p1}, Ldij;->c(I)V

    return-void

    .line 163
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldij;->d(I)V

    return-void

    .line 164
    :pswitch_6
    instance-of p1, p3, Ldib;

    if-eqz p1, :cond_1

    .line 165
    check-cast p3, Ldib;

    invoke-virtual {p0, p3}, Ldij;->a(Ldib;)V

    return-void

    .line 166
    :cond_1
    check-cast p3, [B

    .line 167
    array-length p1, p3

    invoke-virtual {p0, p3, p1}, Ldij;->a([BI)V

    return-void

    .line 171
    :pswitch_7
    check-cast p3, Ldlj;

    invoke-virtual {p0, p3}, Ldij;->a(Ldlj;)V

    return-void

    .line 172
    :pswitch_8
    check-cast p3, Ldlj;

    invoke-virtual {p0, p3}, Ldij;->c(Ldlj;)V

    return-void

    .line 168
    :pswitch_9
    instance-of p1, p3, Ldib;

    if-eqz p1, :cond_2

    .line 169
    check-cast p3, Ldib;

    invoke-virtual {p0, p3}, Ldij;->a(Ldib;)V

    return-void

    .line 170
    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Ldij;->a(Ljava/lang/String;)V

    return-void

    .line 173
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 174
    invoke-virtual {p0, p1}, Ldij;->b(B)V

    return-void

    .line 175
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldij;->e(I)V

    return-void

    .line 176
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldij;->d(J)V

    return-void

    .line 177
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldij;->c(I)V

    return-void

    .line 178
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldij;->c(J)V

    return-void

    .line 179
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 180
    invoke-virtual {p0, p1, p2}, Ldij;->c(J)V

    return-void

    .line 181
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ldij;->a(F)V

    return-void

    .line 182
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldij;->a(D)V

    return-void

    .line 183
    :cond_3
    check-cast p3, Ldlj;

    invoke-static {p3}, Ldkl;->a(Ldlj;)V

    const/4 p1, 0x3

    .line 184
    invoke-virtual {p0, p2, p1}, Ldij;->b(II)V

    .line 185
    invoke-virtual {p0, p3}, Ldij;->c(Ldlj;)V

    const/4 p1, 0x4

    .line 186
    invoke-virtual {p0, p2, p1}, Ldij;->b(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final a(Ldmz;Ljava/lang/Object;)V
    .locals 1

    .line 137
    invoke-static {p1}, Ldkl;->a(Ljava/lang/Object;)V

    .line 138
    sget-object v0, Ldmz;->a:Ldmz;

    sget-object v0, Ldna;->a:Ldna;

    iget-object p0, p0, Ldmz;->s:Ldna;

    invoke-virtual {p0}, Ldna;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    .line 139
    :pswitch_0
    instance-of p0, p1, Ldlj;

    if-nez p0, :cond_0

    instance-of p0, p1, Ldkr;

    if-eqz p0, :cond_1

    goto :goto_1

    .line 140
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    instance-of p0, p1, Ldkf;

    if-eqz p0, :cond_1

    goto :goto_1

    .line 141
    :pswitch_2
    instance-of p0, p1, Ldib;

    if-nez p0, :cond_0

    instance-of p0, p1, [B

    if-eqz p0, :cond_1

    goto :goto_1

    .line 142
    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    goto :goto_0

    .line 143
    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 144
    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 145
    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 146
    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 147
    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    .line 142
    :goto_0
    if-eqz p0, :cond_1

    .line 139
    :cond_0
    :goto_1
    return-void

    .line 138
    :cond_1
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 148
    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ldkc;Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Ldkc;->c:Ldmz;

    iget v1, p0, Ldkc;->b:I

    iget-boolean p0, p0, Ldkc;->d:Z

    if-eqz p0, :cond_1

    .line 56
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 57
    invoke-static {v0, v1, v2}, Ldjt;->a(Ldmz;ILjava/lang/Object;)I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_0

    :cond_0
    return p1

    .line 58
    :cond_1
    invoke-static {v0, v1, p1}, Ldjt;->a(Ldmz;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/util/Map$Entry;)Z
    .locals 4

    .line 82
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 83
    invoke-virtual {v0}, Ldkc;->a()Ldna;

    move-result-object v1

    sget-object v2, Ldna;->i:Ldna;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    iget-boolean v0, v0, Ldkc;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlj;

    .line 85
    invoke-interface {v0}, Ldlj;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 87
    instance-of v0, p0, Ldlj;

    if-eqz v0, :cond_2

    .line 88
    check-cast p0, Ldlj;

    invoke-interface {p0}, Ldlj;->c()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 89
    :cond_2
    instance-of p0, p0, Ldkr;

    if-eqz p0, :cond_3

    return v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 90
    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method


# virtual methods
.method public final a(Ldkc;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldjt;->a:Ldme;

    .line 62
    invoke-virtual {v0, p1}, Ldme;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 63
    instance-of v0, p1, Ldkr;

    if-nez v0, :cond_0

    .line 64
    return-object p1

    :cond_0
    check-cast p1, Ldkr;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ldkc;Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p1, Ldkc;->d:Z

    if-eqz v0, :cond_2

    .line 130
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    .line 132
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Ldkc;->c:Ldmz;

    .line 134
    invoke-static {v3, v2}, Ldjt;->a(Ldmz;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 131
    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_2
    iget-object v0, p1, Ldkc;->c:Ldmz;

    .line 129
    invoke-static {v0, p2}, Ldjt;->a(Ldmz;Ljava/lang/Object;)V

    .line 135
    :goto_1
    instance-of v0, p2, Ldkr;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjt;->d:Z

    :cond_3
    iget-object v0, p0, Ldjt;->a:Ldme;

    .line 136
    invoke-virtual {v0, p1, p2}, Ldme;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map$Entry;)V
    .locals 4

    .line 108
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 109
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 110
    instance-of v1, p1, Ldkr;

    if-nez v1, :cond_6

    iget-boolean v1, v0, Ldkc;->d:Z

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p0, v0}, Ldjt;->a(Ldkc;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 112
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 114
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Ldjt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldjt;->a:Ldme;

    .line 115
    invoke-virtual {p1, v0, v1}, Ldme;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 116
    :cond_2
    invoke-virtual {v0}, Ldkc;->a()Ldna;

    move-result-object v1

    sget-object v2, Ldna;->i:Ldna;

    if-ne v1, v2, :cond_5

    .line 117
    invoke-virtual {p0, v0}, Ldjt;->a(Ldkc;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ldjt;->a:Ldme;

    .line 118
    invoke-static {p1}, Ldjt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ldme;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 119
    :cond_3
    instance-of v2, v1, Ldlo;

    if-nez v2, :cond_4

    .line 122
    check-cast v1, Ldlj;

    .line 123
    invoke-interface {v1}, Ldlj;->V()Ldli;

    move-result-object v1

    check-cast p1, Ldlj;

    .line 124
    check-cast v1, Ldjy;

    check-cast p1, Ldkd;

    invoke-virtual {v1, p1}, Ldjy;->a(Ldkd;)V

    .line 125
    invoke-interface {v1}, Ldli;->h()Ldlj;

    move-result-object p1

    iget-object v1, p0, Ldjt;->a:Ldme;

    .line 126
    invoke-virtual {v1, v0, p1}, Ldme;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 120
    :cond_4
    check-cast v1, Ldlo;

    check-cast p1, Ldlo;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 121
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 128
    :cond_5
    iget-object v1, p0, Ldjt;->a:Ldme;

    .line 127
    invoke-static {p1}, Ldjt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ldme;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 128
    :cond_6
    check-cast p1, Ldkr;

    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final a()Z
    .locals 1

    iget-object v0, p0, Ldjt;->a:Ldme;

    .line 77
    invoke-virtual {v0}, Ldme;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/util/Map$Entry;)I
    .locals 5

    .line 65
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkc;

    .line 66
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ldkc;->a()Ldna;

    move-result-object v2

    sget-object v3, Ldna;->i:Ldna;

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Ldkc;->d:Z

    if-nez v2, :cond_1

    .line 69
    instance-of v0, v1, Ldkr;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldkc;

    iget p1, p1, Ldkc;->b:I

    check-cast v1, Ldkr;

    .line 71
    invoke-static {v4}, Ldij;->h(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3, p1}, Ldij;->h(II)I

    move-result p1

    add-int/2addr v0, p1

    .line 72
    invoke-static {v2, v1}, Ldij;->a(ILdks;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 73
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldkc;

    iget p1, p1, Ldkc;->b:I

    check-cast v1, Ldlj;

    .line 74
    invoke-static {v4}, Ldij;->h(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3, p1}, Ldij;->h(II)I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v2}, Ldij;->h(I)I

    move-result p1

    .line 75
    invoke-static {v1}, Ldij;->b(Ldlj;)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0

    .line 68
    :cond_1
    invoke-static {v0, v1}, Ldjt;->c(Ldkc;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Ldjt;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldjt;->a:Ldme;

    iget-boolean v1, v0, Ldme;->c:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-virtual {v0}, Ldme;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 94
    invoke-virtual {v0, v1}, Ldme;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldkc;

    iget-boolean v3, v3, Ldkc;->d:Z

    if-eqz v3, :cond_1

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 97
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v0}, Ldme;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldkc;

    iget-boolean v3, v3, Ldkc;->d:Z

    if-eqz v3, :cond_3

    .line 100
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 101
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-boolean v1, v0, Ldme;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_7

    iget-object v1, v0, Ldme;->b:Ljava/util/Map;

    .line 102
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 107
    :cond_5
    iget-object v1, v0, Ldme;->b:Ljava/util/Map;

    .line 104
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 103
    :goto_2
    iput-object v1, v0, Ldme;->b:Ljava/util/Map;

    iget-object v1, v0, Ldme;->d:Ljava/util/Map;

    .line 105
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_3

    :cond_6
    iget-object v1, v0, Ldme;->d:Ljava/util/Map;

    .line 107
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 106
    :goto_3
    iput-object v1, v0, Ldme;->d:Ljava/util/Map;

    iput-boolean v2, v0, Ldme;->c:Z

    :cond_7
    iput-boolean v2, p0, Ldjt;->b:Z

    return-void
.end method

.method public final b(Ldkc;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p1, Ldkc;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Ldkc;->c:Ldmz;

    .line 6
    invoke-static {v0, p2}, Ldjt;->a(Ldmz;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p1}, Ldjt;->a(Ldkc;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ldjt;->a:Ldme;

    .line 9
    invoke-virtual {v1, p1, v0}, Ldme;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 11
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Ldjt;
    .locals 4

    new-instance v0, Ldjt;

    .line 13
    invoke-direct {v0}, Ldjt;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldjt;->a:Ldme;

    .line 14
    invoke-virtual {v2}, Ldme;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ldjt;->a:Ldme;

    .line 15
    invoke-virtual {v2, v1}, Ldme;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldkc;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ldjt;->a(Ldkc;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldjt;->a:Ldme;

    .line 17
    invoke-virtual {v1}, Ldme;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldkc;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ldjt;->a(Ldkc;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Ldjt;->d:Z

    iput-boolean v1, v0, Ldjt;->d:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldjt;->c()Ldjt;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2

    iget-boolean v0, p0, Ldjt;->d:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ldkq;

    iget-object v1, p0, Ldjt;->a:Ldme;

    invoke-virtual {v1}, Ldme;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ldkq;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Ldjt;->a:Ldme;

    .line 92
    invoke-virtual {v0}, Ldme;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldjt;->a:Ldme;

    .line 78
    invoke-virtual {v2}, Ldme;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ldjt;->a:Ldme;

    .line 79
    invoke-virtual {v2, v1}, Ldme;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Ldjt;->c(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldjt;->a:Ldme;

    .line 80
    invoke-virtual {v1}, Ldme;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    invoke-static {v2}, Ldjt;->c(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 59
    :cond_0
    instance-of v0, p1, Ldjt;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_1
    check-cast p1, Ldjt;

    iget-object v0, p0, Ldjt;->a:Ldme;

    .line 61
    iget-object p1, p1, Ldjt;->a:Ldme;

    invoke-virtual {v0, p1}, Ldme;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ldjt;->a:Ldme;

    .line 76
    invoke-virtual {v0}, Ldme;->hashCode()I

    move-result v0

    return v0
.end method
