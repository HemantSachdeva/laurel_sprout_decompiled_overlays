.class final Lcal;
.super Lcrq;
.source "PG"

# interfaces
.implements Lbvt;
.implements Lcan;


# static fields
.field public static final synthetic b:I


# instance fields
.field final a:Lj$/util/concurrent/ConcurrentHashMap;

.field private final c:Lcbh;

.field private final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Warm startup activity onStart"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, "Cold startup class loading"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "Cold startup from process creation"

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string v1, "Cold startup interactive before onDraw from process creation"

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string v1, "Cold startup interactive from process creation"

    aput-object v1, v7, v0

    .line 1
    const-string v1, "Cold startup"

    const-string v2, "Cold startup interactive"

    const-string v3, "Cold startup interactive before onDraw"

    const-string v4, "Warm startup"

    const-string v5, "Warm startup interactive"

    const-string v6, "Warm startup interactive before onDraw"

    invoke-static/range {v1 .. v7}, Lcsn;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcsn;

    return-void
.end method

.method public constructor <init>(Lbvr;Leip;Lcqu;)V
    .locals 1

    invoke-direct {p0}, Lcrq;-><init>()V

    new-instance v0, Lcak;

    .line 2
    invoke-direct {v0, p2}, Lcak;-><init>(Leip;)V

    invoke-static {v0}, Lcbh;->a(Leip;)Lcbh;

    move-result-object p2

    iput-object p2, p0, Lcal;->c:Lcbh;

    .line 3
    sget-object v0, Lczj;->a:Lczj;

    .line 4
    invoke-virtual {p1, v0, p2}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    .line 5
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {p3, p1}, Lcqu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcal;->a:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcal;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcal;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcal;->d:Ljava/util/Set;

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
