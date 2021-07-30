.class public final enum Lbtu;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lbtu;

.field public static final enum b:Lbtu;

.field public static final enum c:Lbtu;

.field public static final enum d:Lbtu;

.field public static final enum e:Lbtu;

.field public static final enum f:Lbtu;

.field public static final enum g:Lbtu;

.field public static final enum h:Lbtu;

.field public static final enum i:Lbtu;

.field public static final enum j:Lbtu;

.field public static final enum k:Lbtu;

.field public static final enum l:Lbtu;

.field private static final synthetic n:[Lbtu;


# instance fields
.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lbtu;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v3}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtu;->a:Lbtu;

    new-instance v1, Lbtu;

    .line 2
    const-string v3, "MEMORY"

    const/4 v4, 0x1

    const-string v5, "Memory"

    invoke-direct {v1, v3, v4, v5}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbtu;->b:Lbtu;

    new-instance v3, Lbtu;

    .line 3
    const-string v5, "TIMER"

    const/4 v6, 0x2

    const-string v7, "Timer"

    invoke-direct {v3, v5, v6, v7}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lbtu;->c:Lbtu;

    new-instance v5, Lbtu;

    .line 4
    const-string v7, "NETWORK"

    const/4 v8, 0x3

    const-string v9, "Network"

    invoke-direct {v5, v7, v8, v9}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lbtu;->d:Lbtu;

    new-instance v7, Lbtu;

    .line 5
    const-string v9, "CRASH"

    const/4 v10, 0x4

    const-string v11, "Crash"

    invoke-direct {v7, v9, v10, v11}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lbtu;->e:Lbtu;

    new-instance v9, Lbtu;

    .line 6
    const-string v11, "JANK"

    const/4 v12, 0x5

    const-string v13, "Jank"

    invoke-direct {v9, v11, v12, v13}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lbtu;->f:Lbtu;

    new-instance v11, Lbtu;

    .line 7
    const-string v13, "BATTERY"

    const/4 v14, 0x6

    const-string v15, "Battery"

    invoke-direct {v11, v13, v14, v15}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lbtu;->g:Lbtu;

    new-instance v13, Lbtu;

    .line 8
    const-string v15, "PRIMES_INTERNAL"

    const/4 v14, 0x7

    const-string v12, "Primes Internal Events"

    invoke-direct {v13, v15, v14, v12}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lbtu;->h:Lbtu;

    new-instance v12, Lbtu;

    .line 9
    const-string v15, "CPU"

    const/16 v14, 0x8

    invoke-direct {v12, v15, v14, v15}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lbtu;->i:Lbtu;

    new-instance v15, Lbtu;

    .line 10
    const-string v14, "TRACE"

    const/16 v10, 0x9

    const-string v8, "Trace"

    invoke-direct {v15, v14, v10, v8}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lbtu;->j:Lbtu;

    new-instance v8, Lbtu;

    .line 11
    const-string v14, "CPU_PROFILING"

    const/16 v10, 0xa

    const-string v6, "CPU Profiling"

    invoke-direct {v8, v14, v10, v6}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lbtu;->k:Lbtu;

    new-instance v6, Lbtu;

    .line 12
    const-string v14, "STRICT_MODE"

    const/16 v10, 0xb

    const-string v4, "Strict Mode"

    invoke-direct {v6, v14, v10, v4}, Lbtu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lbtu;->l:Lbtu;

    const/16 v4, 0xc

    new-array v4, v4, [Lbtu;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v15, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v10

    sput-object v4, Lbtu;->n:[Lbtu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbtu;->m:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lbtu;
    .locals 1

    sget-object v0, Lbtu;->n:[Lbtu;

    .line 14
    invoke-virtual {v0}, [Lbtu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbtu;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbtu;->m:Ljava/lang/String;

    return-object v0
.end method
