.class public final Leht;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Leht;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:[Lehc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Leht;

    const/4 v1, 0x0

    new-array v1, v1, [Lehc;

    .line 1
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leht;-><init>([Lehc;[B)V

    sput-object v0, Leht;->a:Leht;

    return-void
.end method

.method public constructor <init>([Lehc;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Leht;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Leht;->c:[Lehc;

    return-void
.end method

.method public static a(Ldvh;Ldvb;)Leht;
    .locals 3

    iget-object v0, p0, Ldvh;->d:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ldvp;

    .line 6
    invoke-direct {v1}, Ldvp;-><init>()V

    .line 7
    const-string v2, "transportAttrs cannot be null"

    invoke-static {p1, v2}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, v1, Ldvp;->a:Ldvb;

    .line 8
    const-string p1, "callOptions cannot be null"

    invoke-static {p0, p1}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p0, v1, Ldvp;->b:Ldvh;

    new-instance p0, Ldvq;

    iget-object p1, v1, Ldvp;->a:Ldvb;

    iget-object v1, v1, Ldvp;->b:Ldvh;

    .line 9
    invoke-direct {p0, p1, v1}, Ldvq;-><init>(Ldvb;Ldvh;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Lehc;

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    .line 11
    new-instance p0, Leht;

    .line 12
    invoke-direct {p0, p1, v1}, Leht;-><init>([Lehc;[B)V

    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldxq;

    throw v1

    .line 12
    :cond_1
    sget-object p0, Leht;->a:Leht;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Leht;->c:[Lehc;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Leht;->c:[Lehc;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
