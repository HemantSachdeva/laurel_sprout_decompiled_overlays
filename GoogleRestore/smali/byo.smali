.class final Lbyo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Leip;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com/google/android/libraries/performance/primes/metrics/network/NetworkMetricCollector"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbyo;->a:Lcua;

    .line 1
    sget v0, Lcsn;->a:I

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "googleapis.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "adwords.google.com"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "m.google.com"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sandbox.google.com"

    aput-object v3, v1, v2

    .line 2
    invoke-static {v0, v1}, Lcsn;->a(I[Ljava/lang/Object;)Lcsn;

    .line 3
    const-string v0, "(?:[^\\/]*\\/)([^;]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    const-string v0, "([^\\?]+)(\\?+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 5
    const-string v0, "((?:https?:\\/\\/|)[a-zA-Z0-9-_\\.]+(?::\\d+)?)(.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    const-string v0, "([a-zA-Z0-9-_]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 7
    const-string v0, "\\b([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})(:\\d{1,5})?\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyo;->b:Leip;

    return-void
.end method
