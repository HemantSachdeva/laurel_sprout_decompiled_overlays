.class public final Ldrk;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Ldrk;

.field private static volatile p:Ldlq;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Lcxu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldrk;

    .line 1
    invoke-direct {v0}, Ldrk;-><init>()V

    sput-object v0, Ldrk;->a:Ldrk;

    const-class v1, Ldrk;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ldrk;->c:Ljava/lang/String;

    iput-object v0, p0, Ldrk;->d:Ljava/lang/String;

    iput-object v0, p0, Ldrk;->e:Ljava/lang/String;

    iput-object v0, p0, Ldrk;->f:Ljava/lang/String;

    iput-object v0, p0, Ldrk;->g:Ljava/lang/String;

    iput-object v0, p0, Ldrk;->h:Ljava/lang/String;

    iput-object v0, p0, Ldrk;->i:Ljava/lang/String;

    iput-object v0, p0, Ldrk;->j:Ljava/lang/String;

    iput-object v0, p0, Ldrk;->k:Ljava/lang/String;

    iput-object v0, p0, Ldrk;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Ldrk;->p:Ldlq;

    if-nez p1, :cond_2

    const-class p2, Ldrk;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldrk;->p:Ldlq;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Ldrk;->a:Ldrk;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldrk;->p:Ldlq;

    .line 6
    :cond_1
    monitor-exit p2

    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 7
    :cond_3
    sget-object p1, Ldrk;->a:Ldrk;

    return-object p1

    :cond_4
    new-instance p1, Ldjy;

    sget-object p2, Ldrk;->a:Ldrk;

    .line 8
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_5
    new-instance p1, Ldrk;

    .line 9
    invoke-direct {p1}, Ldrk;-><init>()V

    return-object p1

    .line 4
    :cond_6
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "b"

    aput-object v6, p1, v5

    const-string v5, "c"

    aput-object v5, p1, p2

    const-string p2, "d"

    aput-object p2, p1, v4

    const-string p2, "e"

    aput-object p2, p1, v3

    const-string p2, "f"

    aput-object p2, p1, v2

    const-string p2, "g"

    aput-object p2, p1, v1

    const-string p2, "i"

    aput-object p2, p1, v0

    const/4 p2, 0x7

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "o"

    aput-object v0, p1, p2

    sget-object p2, Ldrk;->a:Ldrk;

    const-string v0, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0006\u0007\u1008\u0007\u0008\u1008\u0008\t\u1004\t\n\u1004\n\u000b\u1008\u000b\u000c\u1008\u0005\r\u1009\u000c"

    .line 7
    invoke-static {p2, v0, p1}, Ldrk;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_7
    nop

    .line 4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
