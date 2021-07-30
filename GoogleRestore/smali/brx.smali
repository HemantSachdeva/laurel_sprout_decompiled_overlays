.class public final Lbrx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Leod;

.field public final f:Lbqk;

.field public final g:J

.field public final h:Ljava/lang/Long;

.field public final i:Lcrm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/MetricStamper"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbrx;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leod;Ljava/lang/Long;Lbqk;Lcrm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbrx;->b:Ljava/lang/String;

    iput-object p2, p0, Lbrx;->c:Ljava/lang/String;

    iput-object p3, p0, Lbrx;->d:Ljava/lang/String;

    iput-object p4, p0, Lbrx;->e:Leod;

    iput-object p5, p0, Lbrx;->h:Ljava/lang/Long;

    iput-object p6, p0, Lbrx;->f:Lbqk;

    .line 1
    invoke-virtual {p6}, Lbqk;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide p1

    const-wide/16 p3, 0x400

    div-long/2addr p1, p3

    iput-wide p1, p0, Lbrx;->g:J

    const/4 p1, 0x0

    iput-object p1, p0, Lbrx;->i:Lcrm;

    return-void
.end method
