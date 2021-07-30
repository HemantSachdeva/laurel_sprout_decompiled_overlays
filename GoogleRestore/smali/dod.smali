.class public final Ldod;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Ldod;

.field public static final b:Ldjp;

.field private static volatile o:Ldlq;


# instance fields
.field private c:I

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ldnz;

.field private k:Ldnz;

.field private l:Ldkk;

.field private m:Ldoe;

.field private n:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ldod;

    .line 1
    invoke-direct {v0}, Ldod;-><init>()V

    sput-object v0, Ldod;->a:Ldod;

    const-class v1, Ldod;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    .line 3
    sget-object v0, Ldis;->a:Ldis;

    .line 4
    sget-object v1, Ldmz;->h:Ldmz;

    .line 5
    const/4 v2, 0x0

    const v3, 0x51b6a14

    invoke-static {v0, v2, v2, v3, v1}, Ldkd;->a(Ldlj;Ldlj;Ldkg;ILdmz;)Ldjp;

    move-result-object v0

    sput-object v0, Ldod;->b:Ldjp;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldod;->d:I

    const/4 v0, 0x2

    iput-byte v0, p0, Ldod;->n:B

    const-string v0, "_default_"

    iput-object v0, p0, Ldod;->f:Ljava/lang/String;

    .line 7
    sget-object v0, Ldlt;->b:Ldlt;

    iput-object v0, p0, Ldod;->l:Ldkk;

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
    iput-byte v0, p0, Ldod;->n:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Ldod;->o:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Ldod;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldod;->o:Ldlq;

    if-nez p1, :cond_2

    .line 9
    new-instance p1, Ldjz;

    sget-object v0, Ldod;->a:Ldod;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Ldod;->o:Ldlq;

    .line 10
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p1

    .line 12
    :cond_4
    sget-object p1, Ldod;->a:Ldod;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Ldod;->a:Ldod;

    .line 13
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Ldod;

    .line 14
    invoke-direct {p1}, Ldod;-><init>()V

    return-object p1

    .line 8
    :cond_7
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "e"

    aput-object p2, p1, v1

    const-string p2, "d"

    aput-object p2, p1, v0

    const-string p2, "c"

    aput-object p2, p1, v6

    const-string p2, "f"

    aput-object p2, p1, v5

    const-string p2, "g"

    aput-object p2, p1, v4

    .line 11
    invoke-static {}, Ldoc;->b()Ldkh;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "j"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-class v0, Ldop;

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-class v0, Ldnt;

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-class v0, Ldoa;

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    invoke-static {}, Ldoc;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    invoke-static {}, Ldoc;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "m"

    aput-object v0, p1, p2

    sget-object p2, Ldod;->a:Ldod;

    const-string v0, "\u0001\u000b\u0001\u0001\u0001\u000b\u000b\u0000\u0001\u0002\u0001\u1008\u0000\u0002\u100c\u0001\u0003\u1409\u0004\u0004\u103c\u0000\u0005\u103c\u0000\u0006\u1409\u0005\u0007\u001a\u0008\u103c\u0000\t\u100c\u0002\n\u100c\u0003\u000b\u1009\t"

    .line 12
    invoke-static {p2, v0, p1}, Ldod;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_8
    iget-byte p1, p0, Ldod;->n:B

    .line 8
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
