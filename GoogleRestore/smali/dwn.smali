.class public final Ldwn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldwn;


# instance fields
.field public final b:Ljava/util/concurrent/ConcurrentNavigableMap;

.field public final c:Ljava/util/concurrent/ConcurrentMap;

.field public final d:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ldwn;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    new-instance v0, Ldwn;

    .line 2
    invoke-direct {v0}, Ldwn;-><init>()V

    sput-object v0, Ldwn;->a:Ldwn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Ldwn;->b:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 5
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldwn;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldwn;->d:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ldwo;)V
    .locals 2

    .line 8
    invoke-interface {p1}, Ldwo;->b()Ldwp;

    move-result-object v0

    iget-wide v0, v0, Ldwp;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldwo;

    return-void
.end method

.method public static b(Ljava/util/Map;Ldwo;)V
    .locals 2

    .line 9
    invoke-interface {p1}, Ldwt;->b()Ldwp;

    move-result-object p1

    iget-wide v0, p1, Ldwp;->a:J

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldwo;

    return-void
.end method
