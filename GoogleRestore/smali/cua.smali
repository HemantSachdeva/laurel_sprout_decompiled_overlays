.class public final Lcua;
.super Lctx;
.source "PG"


# static fields
.field private static final b:Lcuo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcuo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcuo;-><init>([B)V

    sput-object v0, Lcua;->b:Lcuo;

    return-void
.end method

.method public constructor <init>(Lcuz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lctx;-><init>(Lcuz;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcua;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcua;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    .line 5
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcvf;->a(Ljava/lang/String;)Lcuz;

    move-result-object p0

    invoke-direct {v0, p0}, Lcua;-><init>(Lcuz;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string v0, "injected class name is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/logging/Level;)Lcup;
    .locals 0

    invoke-virtual {p0, p1}, Lcua;->c(Ljava/util/logging/Level;)Lctz;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/logging/Level;)Lctz;
    .locals 2

    invoke-virtual {p0, p1}, Lctx;->b(Ljava/util/logging/Level;)Z

    move-result v0

    iget-object v1, p0, Lctx;->a:Lcuz;

    invoke-virtual {v1}, Lcuz;->a()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1, p1, v0}, Lcvf;->a(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcua;->b:Lcuo;

    return-object p1

    :cond_1
    :goto_0
    new-instance v0, Lcty;

    invoke-direct {v0, p0, p1, v1}, Lcty;-><init>(Lcua;Ljava/util/logging/Level;Z)V

    return-object v0
.end method
