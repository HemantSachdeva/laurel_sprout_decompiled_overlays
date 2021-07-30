.class public final Lekw;
.super Ldkb;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final a:Lekw;

.field private static volatile p:Ldlq;


# instance fields
.field private c:I

.field private d:Lekp;

.field private e:Leka;

.field private f:Leli;

.field private g:Lelw;

.field private h:Lekd;

.field private i:Lbld;

.field private j:Lejs;

.field private k:Lekj;

.field private l:Lelb;

.field private m:Leld;

.field private n:Leku;

.field private o:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lekw;

    .line 1
    invoke-direct {v0}, Lekw;-><init>()V

    sput-object v0, Lekw;->a:Lekw;

    const-class v1, Lekw;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lekw;->o:B

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
    iput-byte v0, p0, Lekw;->o:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Lekw;->p:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Lekw;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lekw;->p:Ldlq;

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Lekw;->a:Lekw;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lekw;->p:Ldlq;

    .line 6
    :cond_2
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

    :cond_3
    :goto_0
    return-object p1

    .line 7
    :cond_4
    sget-object p1, Lekw;->a:Lekw;

    return-object p1

    :cond_5
    new-instance p1, Ldka;

    sget-object p2, Lekw;->a:Lekw;

    .line 8
    invoke-direct {p1, p2}, Ldka;-><init>(Ldkb;)V

    return-object p1

    :cond_6
    new-instance p1, Lekw;

    .line 9
    invoke-direct {p1}, Lekw;-><init>()V

    return-object p1

    .line 4
    :cond_7
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "c"

    aput-object p2, p1, v1

    const-string p2, "d"

    aput-object p2, p1, v0

    const-string p2, "e"

    aput-object p2, p1, v6

    const-string p2, "f"

    aput-object p2, p1, v5

    const-string p2, "g"

    aput-object p2, p1, v4

    const-string p2, "h"

    aput-object p2, p1, v3

    const-string p2, "i"

    aput-object p2, p1, v2

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

    sget-object p2, Lekw;->a:Lekw;

    const-string v0, "\u0001\u000b\u0000\u0001\u0001\u0010\u000b\u0000\u0000\u0000\u0001\u1009\u0000\u0004\u1009\u0001\u0005\u1009\u0002\u0006\u1009\u0003\u0007\u1009\u0004\u0008\u1009\u0005\u000b\u1009\u0006\u000c\u1009\u0007\r\u1009\u0008\u000f\u1009\t\u0010\u1009\n"

    .line 7
    invoke-static {p2, v0, p1}, Lekw;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_8
    iget-byte p1, p0, Lekw;->o:B

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
