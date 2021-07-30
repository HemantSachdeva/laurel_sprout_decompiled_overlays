.class public abstract Ldkd;
.super Ldhi;
.source "PG"


# static fields
.field public static final u:Ljava/util/Map;


# instance fields
.field public s:Ldmj;

.field protected t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ldkd;->u:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ldhi;-><init>()V

    .line 3
    sget-object v0, Ldmj;->a:Ldmj;

    iput-object v0, p0, Ldkd;->s:Ldmj;

    const/4 v0, -0x1

    iput v0, p0, Ldkd;->t:I

    return-void
.end method

.method public static a(Ldlj;Ldlj;ILdmz;)Ldjp;
    .locals 4

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    new-instance v0, Ldjp;

    new-instance v1, Ldkc;

    .line 35
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p2, p3, v3}, Ldkc;-><init>(Ldkg;ILdmz;Z)V

    invoke-direct {v0, p0, p1, v1}, Ldjp;-><init>(Ldlj;Ldlj;Ldkc;)V

    return-object v0
.end method

.method public static a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;
    .locals 3

    new-instance v0, Ldjp;

    new-instance v1, Ldkc;

    .line 36
    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, p4, v2}, Ldkc;-><init>(Ldkg;ILdmz;Z)V

    invoke-direct {v0, p0, p1, v1}, Ldjp;-><init>(Ldlj;Ldlj;Ldkc;)V

    return-object v0
.end method

.method static a(Ldkd;Ldie;Ldjr;)Ldkd;
    .locals 1

    .line 41
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldkd;

    .line 42
    :try_start_0
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p0}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v0

    .line 43
    invoke-static {p1}, Ldif;->a(Ldie;)Ldif;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    .line 44
    invoke-interface {v0, p0}, Ldlw;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 50
    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ldkn;

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldkn;

    throw p0

    .line 47
    :cond_0
    throw p0

    .line 44
    :catch_1
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ldkn;

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldkn;

    throw p0

    .line 46
    :cond_1
    new-instance p1, Ldkn;

    .line 50
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ldkn;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ldkd;[B)Ldkd;
    .locals 3

    .line 37
    array-length v0, p1

    .line 38
    invoke-static {}, Ldjr;->a()Ldjr;

    move-result-object v1

    .line 37
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Ldkd;->a(Ldkd;[BIILdjr;)Ldkd;

    move-result-object p0

    invoke-static {p0}, Ldkd;->a(Ldkd;)V

    return-object p0
.end method

.method public static a(Ldkd;[BIILdjr;)Ldkd;
    .locals 7

    .line 51
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldkd;

    .line 52
    :try_start_0
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p0}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v6

    add-int v4, p2, p3

    new-instance v5, Ldhn;

    .line 53
    invoke-direct {v5, p4}, Ldhn;-><init>(Ldjr;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Ldlw;->a(Ljava/lang/Object;[BIILdhn;)V

    .line 54
    invoke-interface {v6, p0}, Ldlw;->d(Ljava/lang/Object;)V

    .line 55
    iget p1, p0, Ldkd;->r:I

    if-nez p1, :cond_0

    .line 56
    return-object p0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 56
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    move-exception p0

    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ldkn;

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldkn;

    throw p0

    .line 56
    :cond_1
    new-instance p1, Ldkn;

    .line 60
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ldkn;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ldkd;[BLdjr;)Ldkd;
    .locals 2

    .line 39
    array-length v0, p1

    .line 40
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Ldkd;->a(Ldkd;[BIILdjr;)Ldkd;

    move-result-object p0

    .line 39
    invoke-static {p0}, Ldkd;->a(Ldkd;)V

    return-object p0
.end method

.method public static a(Ldkj;)Ldkj;
    .locals 1

    .line 29
    invoke-interface {p0}, Ldkj;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    .line 30
    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Ldkj;->b(I)Ldkj;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ldkk;)Ldkk;
    .locals 1

    .line 31
    invoke-interface {p0}, Ldkk;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    .line 32
    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Ldkk;->a(I)Ldkk;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ldlu;

    .line 33
    invoke-direct {v0, p0, p1, p2}, Ldlu;-><init>(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 19
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 21
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 22
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 20
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 17
    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    .line 24
    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ldkd;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ldkd;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ldkd;->W()Ldmi;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ldmi;->a()Ldkn;

    move-result-object p0

    .line 7
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected static a(Ljava/lang/Class;Ldkd;)V
    .locals 1

    sget-object v0, Ldkd;->u:Ljava/util/Map;

    .line 61
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j()Ldkj;
    .locals 1

    .line 10
    sget-object v0, Ldky;->b:Ldky;

    return-object v0
.end method

.method public static k()Ldkk;
    .locals 1

    .line 11
    sget-object v0, Ldlt;->b:Ldlt;

    return-object v0
.end method


# virtual methods
.method public final U()I
    .locals 1

    iget v0, p0, Ldkd;->t:I

    return v0
.end method

.method public final bridge synthetic V()Ldli;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjy;

    invoke-virtual {v0, p0}, Ldjy;->a(Ldkd;)V

    return-object v0
.end method

.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Ldkd;->t:I

    return-void
.end method

.method public final a(Ldij;)V
    .locals 2

    .line 67
    sget-object v0, Ldls;->a:Ldls;

    .line 68
    invoke-virtual {v0, p0}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v0

    iget-object v1, p1, Ldij;->f:Ldik;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Ldik;

    .line 69
    invoke-direct {v1, p1}, Ldik;-><init>(Ldij;)V

    .line 70
    :goto_0
    invoke-interface {v0, p0, v1}, Ldlw;->a(Ljava/lang/Object;Ldik;)V

    return-void
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    .line 9
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldkd;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 3

    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 27
    :cond_1
    sget-object v2, Ldls;->a:Ldls;

    invoke-virtual {v2, p0}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v2

    invoke-interface {v2, p0}, Ldlw;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :cond_2
    move-object v0, p0

    .line 27
    :goto_0
    const/4 v1, 0x2

    .line 28
    invoke-virtual {p0, v1, v0}, Ldkd;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_3
    move v1, v2

    .line 26
    :goto_1
    return v1
.end method

.method public final bridge synthetic d()Ldli;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjy;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 13
    :cond_2
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p0}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v0

    check-cast p1, Ldkd;

    invoke-interface {v0, p0, p1}, Ldlw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ldlq;
    .locals 1

    .line 14
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlq;

    return-object v0
.end method

.method public final g()Ldjy;
    .locals 1

    .line 8
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjy;

    return-object v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Ldkd;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 15
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p0}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v0

    invoke-interface {v0, p0}, Ldlw;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ldkd;->t:I

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Ldkd;->r:I

    if-eqz v0, :cond_0

    return v0

    .line 16
    :cond_0
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p0}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v0

    invoke-interface {v0, p0}, Ldlw;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ldkd;->r:I

    return v0
.end method

.method public final bridge synthetic i()Ldlj;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkd;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Ldll;->a(Ldlj;Ljava/lang/StringBuilder;I)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
