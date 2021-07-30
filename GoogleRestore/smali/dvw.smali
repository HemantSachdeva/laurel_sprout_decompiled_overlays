.class public final Ldvw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldvw;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ldvw;

    const/4 v1, 0x2

    new-array v1, v1, [Ldvv;

    new-instance v2, Ldvs;

    invoke-direct {v2}, Ldvs;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ldvt;->a:Ldvu;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1
    invoke-direct {v0, v1}, Ldvw;-><init>([Ldvv;)V

    sput-object v0, Ldvw;->a:Ldvw;

    return-void
.end method

.method public varargs constructor <init>([Ldvv;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldvw;->b:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 3
    aget-object v1, p1, v0

    iget-object v2, p0, Ldvw;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    invoke-interface {v1}, Ldvv;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
