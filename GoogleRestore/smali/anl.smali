.class final synthetic Lanl;
.super Ljava/lang/Object;

# interfaces
.implements Lbpa;


# static fields
.field static final a:Lbpa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lanl;

    invoke-direct {v0}, Lanl;-><init>()V

    sput-object v0, Lanl;->a:Lbpa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lann;->a:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed updating Phenotype flags."

    invoke-virtual {v0, v2, p1, v1}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
