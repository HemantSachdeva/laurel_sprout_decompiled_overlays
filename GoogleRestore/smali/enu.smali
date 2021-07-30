.class public final Lenu;
.super Ldkd;
.source "PG"

# interfaces
.implements Ldlk;


# static fields
.field public static final e:Lenu;

.field private static volatile o:Ldlq;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:I

.field private k:J

.field private l:I

.field private m:Lekw;

.field private n:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lenu;

    .line 1
    invoke-direct {v0}, Lenu;-><init>()V

    sput-object v0, Lenu;->e:Lenu;

    const-class v1, Lenu;

    .line 2
    invoke-static {v1, v0}, Ldkd;->a(Ljava/lang/Class;Ldkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldkd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lenu;->n:B

    const-string v0, ""

    iput-object v0, p0, Lenu;->b:Ljava/lang/String;

    iput-object v0, p0, Lenu;->d:Ljava/lang/String;

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
    iput-byte v0, p0, Lenu;->n:B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object p1, Lenu;->o:Ldlq;

    if-nez p1, :cond_3

    const-class p2, Lenu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lenu;->o:Ldlq;

    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ldjz;

    sget-object v0, Lenu;->e:Lenu;

    invoke-direct {p1, v0}, Ldjz;-><init>(Ldkd;)V

    sput-object p1, Lenu;->o:Ldlq;

    .line 6
    :cond_2
    monitor-exit p2

    goto :goto_0

    .line 10
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

    .line 8
    :cond_4
    sget-object p1, Lenu;->e:Lenu;

    return-object p1

    :cond_5
    new-instance p1, Ldjy;

    sget-object p2, Lenu;->e:Lenu;

    .line 9
    invoke-direct {p1, p2}, Ldjy;-><init>(Ldkd;)V

    return-object p1

    :cond_6
    new-instance p1, Lenu;

    .line 10
    invoke-direct {p1}, Lenu;-><init>()V

    return-object p1

    .line 4
    :cond_7
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const-string p2, "f"

    aput-object p2, p1, v6

    const-string p2, "g"

    aput-object p2, p1, v5

    const-string p2, "h"

    aput-object p2, p1, v4

    const-string p2, "i"

    aput-object p2, p1, v3

    const-string p2, "k"

    aput-object p2, p1, v2

    const/4 p2, 0x7

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    .line 7
    invoke-static {}, Lent;->b()Ldkh;

    move-result-object v0

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "c"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "d"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "m"

    aput-object v0, p1, p2

    sget-object p2, Lenu;->e:Lenu;

    const-string v0, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1005\u0003\u0003\u1005\u0004\u0004\u1002\u0005\u0005\u1002\u0006\u0006\u1002\u0008\u0007\u100c\t\u0008\u1005\u0001\t\u1008\u0002\n\u1004\u0007\u000b\u1409\n"

    .line 8
    invoke-static {p2, v0, p1}, Lenu;->a(Ldlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_8
    iget-byte p1, p0, Lenu;->n:B

    .line 4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
