.class final synthetic Lakp;
.super Ljava/lang/Object;

# interfaces
.implements Lcrm;


# static fields
.field static final a:Lcrm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lakp;

    invoke-direct {v0}, Lakp;-><init>()V

    sput-object v0, Lakp;->a:Lcrm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Laqq;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method
