.class public final Latt;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final e:Latt;

.field private static volatile m:Ldlq;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ldkk;

.field private f:J

.field private g:Ldkk;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lasy;

.field private k:I

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Latt;

    .line 1
    invoke-direct {v0}, Latt;-><init>()V

    sput-object v0, Latt;->e:Latt;

    const-class v1, Latt;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Latt;->l:B

    const-string v0, ""

    iput-object v0, p0, Latt;->b:Ljava/lang/String;

    .line 4
    sget-object v1, Ldlt;->b:Ldlt;

    iput-object v1, p0, Latt;->g:Ldkk;

    iput-object v0, p0, Latt;->h:Ljava/lang/String;

    iput-object v0, p0, Latt;->i:Ljava/lang/String;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Latt;->d:Ldkk;

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
    iput-byte v0, p0, Latt;->l:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Latt;->m:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Latt;

    monitor-enter p2

    :try_start_0
    sget-object p1, Latt;->m:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Latt;->e:Latt;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Latt;->m:Ldlq;

    .line 7
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p1

    .line 10
    :cond_4
    sget-object p1, Latt;->e:Latt;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Latt;->e:Latt;

    .line 11
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Latt;

    .line 12
    invoke-direct {p1}, Latt;-><init>()V

    return-object p1

    .line 5
    :cond_7
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const-string p2, "g"

    aput-object p2, p1, v6

    const-class p2, Laub;

    aput-object p2, p1, v5

    const-string p2, "c"

    aput-object p2, p1, v4

    .line 8
    invoke-static {}, Laty;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "d"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    .line 9
    invoke-static {}, Lasx;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Latt;->e:Latt;

    const-string v0, "\u0001\t\u0000\u0001\u0003 \t\u0000\u0002\u0003\u0003\u1508\u0000\u0004\u041b\u0005\u150c\u0004\u0006\u001a\u000c\u1003\u0001\u0012\u1008\u0002\u0014\u1008\u0003\u001e\u1009\u0005 \u100c\u0006"

    .line 10
    invoke-static {p2, v0, p1}, Latt;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Latt;->l:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
