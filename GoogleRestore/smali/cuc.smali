.class public final Lcuc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcuq;

.field public static final b:Lcuq;

.field public static final c:Lcuq;

.field public static final d:Lcuq;

.field public static final e:Lcuq;

.field public static final f:Lcuq;

.field public static final g:Lcuq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/lang/Throwable;

    .line 1
    const-string v1, "cause"

    invoke-static {v1, v0}, Lcuq;->a(Ljava/lang/String;Ljava/lang/Class;)Lcuq;

    move-result-object v0

    sput-object v0, Lcuc;->a:Lcuq;

    const-class v0, Ljava/lang/Integer;

    .line 2
    const-string v1, "ratelimit_count"

    invoke-static {v1, v0}, Lcuq;->a(Ljava/lang/String;Ljava/lang/Class;)Lcuq;

    move-result-object v0

    sput-object v0, Lcuc;->b:Lcuq;

    const-class v0, Lcul;

    .line 3
    const-string v1, "ratelimit_period"

    invoke-static {v1, v0}, Lcuq;->a(Ljava/lang/String;Ljava/lang/Class;)Lcuq;

    move-result-object v0

    sput-object v0, Lcuc;->c:Lcuq;

    const-class v0, Ljava/lang/String;

    .line 4
    const-string v1, "unique_key"

    invoke-static {v1, v0}, Lcuq;->a(Ljava/lang/String;Ljava/lang/Class;)Lcuq;

    move-result-object v0

    sput-object v0, Lcuc;->d:Lcuq;

    const-class v0, Ljava/lang/Boolean;

    .line 5
    const-string v1, "forced"

    invoke-static {v1, v0}, Lcuq;->a(Ljava/lang/String;Ljava/lang/Class;)Lcuq;

    move-result-object v0

    sput-object v0, Lcuc;->e:Lcuq;

    const-class v0, Lcvi;

    .line 6
    const-string v1, "tags"

    invoke-static {v1, v0}, Lcuq;->a(Ljava/lang/String;Ljava/lang/Class;)Lcuq;

    move-result-object v0

    sput-object v0, Lcuc;->f:Lcuq;

    const-class v0, Lcur;

    .line 7
    const-string v1, "stack_size"

    invoke-static {v1, v0}, Lcuq;->a(Ljava/lang/String;Ljava/lang/Class;)Lcuq;

    move-result-object v0

    sput-object v0, Lcuc;->g:Lcuq;

    return-void
.end method
