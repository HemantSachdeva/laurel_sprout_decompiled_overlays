.class public final Ldis;
.super Ldkb;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Ldis;

.field private static volatile p:Ldlq;


# instance fields
.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ldkk;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ldkk;

.field private o:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldis;

    .line 1
    invoke-direct {v0}, Ldis;-><init>()V

    sput-object v0, Ldis;->a:Ldis;

    const-class v1, Ldis;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldis;->o:B

    .line 4
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Ldis;->j:Ldkk;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldis;->l:Z

    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Ldis;->n:Ldkk;

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
    iput-byte v0, p0, Ldis;->o:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldis;->p:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldis;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldis;->p:Ldlq;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ldjz;

    sget-object v0, Ldis;->a:Ldis;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldis;->p:Ldlq;

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
    sget-object p1, Ldis;->a:Ldis;

    return-object p1

    :cond_5
    new-instance p1, Ldka;

    sget-object p2, Ldis;->a:Ldis;

    .line 11
    invoke-direct {p1, p2}, Ldka;-><init>(Ldkb;)V

    return-object p1

    :cond_6
    new-instance p1, Ldis;

    .line 12
    invoke-direct {p1}, Ldis;-><init>()V

    return-object p1

    .line 5
    :cond_7
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "c"

    aput-object p2, p1, v1

    const-string p2, "d"

    aput-object p2, p1, v0

    .line 8
    invoke-static {}, Ldio;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v6

    const-string p2, "e"

    aput-object p2, p1, v5

    const-string p2, "h"

    aput-object p2, p1, v4

    const-string p2, "g"

    aput-object p2, p1, v3

    const-string p2, "f"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    .line 9
    invoke-static {}, Ldiq;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-class v0, Ldir;

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-class v0, Ldjn;

    aput-object v0, p1, p2

    sget-object p2, Ldis;->a:Ldis;

    const-string v0, "\u0001\u000b\u0000\u0001\u0001\u03e7\u000b\u0000\u0002\u0001\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1007\u0004\u0005\u1007\u0003\u0006\u100c\u0002\n\u1007\u0005\u000b\u001b\u000c\u1007\u0006\r\u1007\u0007\u000e\u1007\u0008\u03e7\u041b"

    .line 10
    invoke-static {p2, v0, p1}, Ldis;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_8
    iget-byte p1, p0, Ldis;->o:B

    .line 5
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
