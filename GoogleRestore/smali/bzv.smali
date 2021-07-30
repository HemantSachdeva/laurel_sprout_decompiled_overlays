.class final Lbzv;
.super Lcrj;
.source "PG"

# interfaces
.implements Lbtm;
.implements Lbqu;
.implements Lbvt;


# static fields
.field public static final a:Lcua;

.field public static final b:J


# instance fields
.field public final c:Lbvq;

.field public final d:Landroid/app/Application;

.field public final e:Leip;

.field public final f:Lcbd;

.field private final g:Lbqy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com/google/android/libraries/performance/primes/metrics/storage/StorageMetricServiceImpl"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbzv;->a:Lcua;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lbzv;->b:J

    return-void
.end method

.method public constructor <init>(Lbvr;Landroid/app/Application;Lczw;Leip;Lcbd;)V
    .locals 1

    invoke-direct {p0}, Lcrj;-><init>()V

    .line 2
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lbvr;->a(Ljava/util/concurrent/Executor;Lcbh;)Lbvq;

    move-result-object p1

    iput-object p1, p0, Lbzv;->c:Lbvq;

    iput-object p2, p0, Lbzv;->d:Landroid/app/Application;

    iput-object p4, p0, Lbzv;->e:Leip;

    iput-object p5, p0, Lbzv;->f:Lcbd;

    .line 3
    invoke-static {p2}, Lbqy;->a(Landroid/app/Application;)Lbqy;

    move-result-object p1

    iput-object p1, p0, Lbzv;->g:Lbqy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbzv;->g:Lbqy;

    .line 8
    invoke-virtual {v0, p0}, Lbqy;->b(Lbqx;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lbzv;->g:Lbqy;

    .line 4
    invoke-virtual {p1, p0}, Lbqy;->b(Lbqx;)V

    iget-object p1, p0, Lbzv;->c:Lbvq;

    new-instance v0, Lbzu;

    .line 5
    invoke-direct {v0, p0}, Lbzu;-><init>(Lbzv;)V

    invoke-virtual {p1, v0}, Lbvq;->a(Lczc;)Lczu;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lbte;->a(Lczu;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lbzv;->g:Lbqy;

    .line 7
    invoke-virtual {v0, p0}, Lbqy;->a(Lbqx;)V

    return-void
.end method
