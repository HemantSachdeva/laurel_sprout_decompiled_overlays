.class public final Laua;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final e:Laua;

.field private static volatile m:Ldlq;


# instance fields
.field public a:I

.field public b:I

.field public c:Ldkk;

.field public d:Ldkk;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ldkk;

.field private j:Ldkk;

.field private k:Latz;

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laua;

    .line 1
    invoke-direct {v0}, Laua;-><init>()V

    sput-object v0, Laua;->e:Laua;

    const-class v1, Laua;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Laua;->l:B

    const-string v0, ""

    iput-object v0, p0, Laua;->g:Ljava/lang/String;

    iput-object v0, p0, Laua;->h:Ljava/lang/String;

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Laua;->c:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Laua;->d:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Laua;->i:Ldkk;

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Laua;->j:Ldkk;

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
    iput-byte v0, p0, Laua;->l:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Laua;->m:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Laua;

    monitor-enter p2

    :try_start_0
    sget-object p1, Laua;->m:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Laua;->e:Laua;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Laua;->m:Ldlq;

    .line 7
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 11
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

    .line 9
    :cond_4
    sget-object p1, Laua;->e:Laua;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Laua;->e:Laua;

    .line 10
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Laua;

    .line 11
    invoke-direct {p1}, Laua;-><init>()V

    return-object p1

    .line 5
    :cond_7
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "f"

    aput-object p2, p1, v0

    const-string p2, "c"

    aput-object p2, p1, v6

    const-class p2, Latt;

    aput-object p2, p1, v5

    const-string p2, "d"

    aput-object p2, p1, v4

    const-class p2, Latw;

    aput-object p2, p1, v3

    const-string p2, "b"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    .line 8
    invoke-static {}, Laty;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-class v0, Latr;

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-class v0, Lats;

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "k"

    aput-object v0, p1, p2

    sget-object p2, Laua;->e:Laua;

    const-string v0, "\u0001\t\u0000\u0001\u0001(\t\u0000\u0004\u0004\u0001\u100b\u0000\u0002\u0431\u0007\u0431\u000b\u150c\u0001\u0015\u041b\u001d\u1008\u0002#\u1008\u0003\'\u001b(\u1009\u0004"

    .line 9
    invoke-static {p2, v0, p1}, Laua;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Laua;->l:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
