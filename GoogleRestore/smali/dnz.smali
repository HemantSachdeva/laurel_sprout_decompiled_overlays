.class public final Ldnz;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Ldnz;

.field private static volatile i:Ldlq;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldnz;

    .line 1
    invoke-direct {v0}, Ldnz;-><init>()V

    sput-object v0, Ldnz;->a:Ldnz;

    const-class v1, Ldnz;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldnz;->c:I

    const/4 v0, 0x2

    iput-byte v0, p0, Ldnz;->h:B

    const-string v0, ""

    iput-object v0, p0, Ldnz;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Ldnz;->g:I

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-byte v0, p0, Ldnz;->h:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldnz;->i:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldnz;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldnz;->i:Ldlq;

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Ldnz;->a:Ldnz;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldnz;->i:Ldlq;

    .line 6
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p1

    .line 9
    :cond_4
    sget-object p1, Ldnz;->a:Ldnz;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Ldnz;->a:Ldnz;

    .line 10
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Ldnz;

    .line 11
    invoke-direct {p1}, Ldnz;-><init>()V

    return-object p1

    .line 4
    :cond_7
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "d"

    aput-object p2, p1, v1

    const-string p2, "c"

    aput-object p2, p1, v0

    const-string p2, "b"

    aput-object p2, p1, v6

    const-string p2, "e"

    aput-object p2, p1, v5

    .line 7
    invoke-static {}, Ldny;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v4

    const-class p2, Ldnw;

    aput-object p2, p1, v3

    const-string p2, "f"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    .line 8
    invoke-static {}, Ldnv;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Ldnz;->a:Ldnz;

    const-string v0, "\u0001\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0001\u0001\u100c\u0000\u0002\u1034\u0000\u0003\u143c\u0000\u0004\u1008\u0003\u0005\u100c\u0004"

    .line 9
    invoke-static {p2, v0, p1}, Ldnz;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_8
    iget-byte p1, p0, Ldnz;->h:B

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
